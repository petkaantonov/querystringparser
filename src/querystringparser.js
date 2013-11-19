var rplus = /\+/g;
var isArray = Array.isArray;
var haveProp = {}.hasOwnProperty;

var QueryStringParser = {
    parse: parse,
    maxLength: 1024 * 1024 * 2
};

function decode(str, shouldDecode, containsPlus) {
    if (shouldDecode === false) return str;
    if (containsPlus === true) str = str.replace(rplus, " ");
    try {
        return decodeURIComponent(str);
    }
    catch (e) {
        return str;
    }
}

//Returns a valid index into an array or -1
var rint = /^[0-9]+$/;
function maybeArrayIndex(str, arrayLength) {
    var len = str.length;
    //Empty string I.E. direct brackets [] means index will be .length
    if (len === 0) {
        return arrayLength;
    }
    var ch = str.charCodeAt(0);

    //"0" is only valid index if it's the only character in the string
    //"00", "001", are not valid array indices
    if (ch === INT_START) {
        return len > 1 ? -1 : 0;
    }
    else if (INT_START <= ch && ch <= INT_END) {
        //Single digit number 1-9
        if (len === 1) {
            return ch - INT_START;
        }
        else if (rint.test(str)) {
            var v = parseInt(str, 10);
            if (0 < v && v <= MAX_INDEX) {
                return v;
            }
        }
    }
    return -1;
}


function parse(str) {
    if (typeof str === "string") {
        if (str.length > QueryStringParser.maxLength) {
            throw new RangeError(
                "str is too long (" +
                "QueryStringParser.maxLength=" + QueryStringParser.maxLength +
                ")"
            );
        }
        return parseString(str);
    }
    return {};
}


function getSlot(dictionary, prevKey, curKey) {
    var slot;
    if (!(haveProp.call(dictionary, prevKey))) {
        var index = maybeArrayIndex(curKey, 0);
        if (index > -1) {
            slot = [];
        }
        else {
            slot = {};
        }
        dictionary[prevKey] = slot;
    }
    else {
        slot = dictionary[prevKey];
    }
    return slot;
}
//prevKey = "abc"
//curKey = ""
//curKey = "asd" abc[asd]=3
//a[asd][]=1&a[asd][]=2&a[asd][]=3
var containsSparse = false;
function placeNestedValue(dictionary, key, value, i, prevKey, curKey) {
    var slot = getSlot(dictionary, prevKey, curKey);
    var index = -1;

    if (isArray(slot)) {
        index = maybeArrayIndex(curKey, slot.length);
    }

    var len = key.length;
    var depth = 2;
    var start = -1;
    for (; i < len; ++i) {
        var ch = key.charCodeAt(i);
        if (ch === LEFT) {
            start = i + 1;
        }
        else if (ch === RIGHT &&
                start > -1) {
            prevKey = curKey;
            curKey = start === i ? "" : key.substring(start, i);
            start = -1;
            depth++;
            if (depth > MAX_KEY_DEPTH) {
                throw new RangeError("The maximum amount of nested keys is " +
                    MAX_KEY_DEPTH );
            }
            slot = getSlot(slot, prevKey, curKey);

            index = isArray(slot)
                ? maybeArrayIndex(curKey, slot.length)
                : -1;
        }
    }

    if(index > -1) {
        if (value !== "") {
            if (index === slot.length) {
                //Avoids out of bounds access deoptimization
                slot.push(value);
            }
            else {
                containsSparse = true;
                slot[index] = value;
            }
        }
    }
    else {
        insert(slot, curKey, value);
    }
}

function insert(dictionary, key, value) {
    if (haveProp.call(dictionary, key)) {
        var prev = dictionary[key];
        if( isArray(prev) ) {
            prev.push(value);
        }
        else {
            dictionary[key] = [prev, value];
        }
    }
    else {
        dictionary[key] = value;
    }
}

function maybePlaceNestedValue(dictionary, key, value) {
    var len = key.length;
    if (key.charCodeAt(len - 1) !== RIGHT) {
        placeValue(dictionary, key, value, CERTAINLY_NOT_NESTED);
        return;
    }
    var start = -1;

    var i = 0;
    var curKey;
    var prevKey;

    for (; i < len; ++i) {
        var ch = key.charCodeAt(i);

        if (ch === LEFT) {
            start = i + 1;
            prevKey = key.substring(0, i);
        }
        else if (ch === RIGHT) {
            if (start < 0) {
                placeValue(dictionary, key, value, CERTAINLY_NOT_NESTED);
                return;
            }
            curKey = start === i ? "" : key.substring(start, i);
            i++;
            break;
        }
    }

    if (curKey === void 0) {
        placeValue(dictionary, key, value, CERTAINLY_NOT_NESTED);
        return;
    }
    placeNestedValue(dictionary, key, value, i, prevKey, curKey);
}

function placeValue(dictionary, key, value, possiblyNested) {

    if (possiblyNested === MIGHT_BE_NESTED) {
        maybePlaceNestedValue(dictionary, key, value);
        return;
    }
    insert(dictionary, key, value);
}

function compact(obj) {
    if (isArray(obj)) {
        var ret = [];
        var keys = Object.keys(obj);
        for( var i = 0, len = keys.length; i < len; ++i ) {
            ret.push(obj[keys[i]]);
        }
        return ret;
    }
    else if (typeof obj === "object") {
        var keys = Object.keys(obj);
        for( var i = 0, len = keys.length; i < len; ++i ) {
            var key = keys[i];
            obj[key] = compact(obj[key]);
        }
    }
    else {
        return obj;
    }
}

function parseString(str) {
    containsSparse = false;
    var decodeKey = false;
    var decodeValue = false;
    var possiblyNested = CERTAINLY_NOT_NESTED;
    var len = str.length;
    var i = 0;
    var dictionary = {};
    var keyStart = 0;
    var keyEnd = 0;
    var valueStart = 0;
    var valueEnd = 0;
    var left = 0;
    var lastIndex = len - 1;
    var containsPlus = false;


    for (; i < len; ++i) {
        var ch = str.charCodeAt(i);

        if (ch === LEFT) {
            left++;
        }
        else if (left > 0 && ch === RIGHT) {
            possiblyNested = MIGHT_BE_NESTED;
            left--;
        }
        else if (left === 0 && ch === EQUALS) {
            var j = i + 1;

            keyEnd = i - 1;
            valueEnd = valueStart = j;
            var key = str.slice(keyStart, keyEnd + 1);
            key = decode(key, decodeKey, containsPlus);
            decodeKey = false;

            for (; j < len; ++j) {
                ch = str.charCodeAt(j);
                if (ch === PLUS || ch === PCT) {
                    if (ch === PLUS) containsPlus = true;
                    decodeValue = true;
                }
                if (ch === AMP || j === lastIndex) {
                    valueEnd = j;
                    i = j;

                    if (ch === AMP) {
                        valueEnd--;
                    }

                    var value = str.slice(valueStart, valueEnd + 1);
                    value = decode(value, decodeValue, containsPlus);

                    placeValue(dictionary, key, value, possiblyNested);

                    containsPlus = decodeValue = false;
                    possiblyNested = CERTAINLY_NOT_NESTED;

                    keyStart = j + 1;
                    break;
                }
            }
        }
        else if (ch === PLUS || ch === PCT) {
            if (ch === PLUS) containsPlus = true;
            decodeKey = true;
        }
    }
    if (keyStart !== len) {
        var value = "";
        var key = str.slice(keyStart, len);
        key = decode(key, decodeKey, containsPlus);
        placeValue(dictionary, key, value, possiblyNested);
    }


    if (containsSparse) {
        //This behavior is pretty stupid but what you gonna do
        compact(dictionary);
    }

    return dictionary;
}

module.exports = QueryStringParser;
