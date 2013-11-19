/**
 * Copyright (c) 2013 Petka Antonov
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:</p>
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
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

var rint = /^[0-9]+$/;
function maybeArrayIndex(str, arrayLength) {
    var len = str.length;
    if (len === 0) {
        return arrayLength;
    }
    var ch = str.charCodeAt(0);

    if (ch === 48) {
        return len > 1 ? -1 : 0;
    }
    else if (48 <= ch && ch <= 57) {
        if (len === 1) {
            return ch - 48;
        }
        else if (rint.test(str)) {
            var v = parseInt(str, 10);
            if (0 < v && v <= 1073741822) {
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
        if (ch === 91) {
            start = i + 1;
        }
        else if (ch === 93 &&
                start > -1) {
            prevKey = curKey;
            curKey = start === i ? "" : key.substring(start, i);
            start = -1;
            depth++;
            if (depth > 12) {
                throw new RangeError("The maximum amount of nested keys is " +
                    12 );
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
    if (key.charCodeAt(len - 1) !== 93) {
        placeValue(dictionary, key, value, false);
        return;
    }
    var start = -1;

    var i = 0;
    var curKey;
    var prevKey;

    for (; i < len; ++i) {
        var ch = key.charCodeAt(i);

        if (ch === 91) {
            start = i + 1;
            prevKey = key.substring(0, i);
        }
        else if (ch === 93) {
            if (start < 0) {
                placeValue(dictionary, key, value, false);
                return;
            }
            curKey = start === i ? "" : key.substring(start, i);
            i++;
            break;
        }
    }

    if (curKey === void 0) {
        placeValue(dictionary, key, value, false);
        return;
    }
    placeNestedValue(dictionary, key, value, i, prevKey, curKey);
}

function placeValue(dictionary, key, value, possiblyNested) {

    if (possiblyNested === true) {
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
    var possiblyNested = false;
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

        if (ch === 91) {
            left++;
        }
        else if (left > 0 && ch === 93) {
            possiblyNested = true;
            left--;
        }
        else if (left === 0 && ch === 61) {
            var j = i + 1;

            keyEnd = i - 1;
            valueEnd = valueStart = j;
            var key = str.slice(keyStart, keyEnd + 1);
            key = decode(key, decodeKey, containsPlus);
            decodeKey = false;

            for (; j < len; ++j) {
                ch = str.charCodeAt(j);
                if (ch === 43 || ch === 37) {
                    if (ch === 43) containsPlus = true;
                    decodeValue = true;
                }
                if (ch === 38 || j === lastIndex) {
                    valueEnd = j;
                    i = j;

                    if (ch === 38) {
                        valueEnd--;
                    }

                    var value = str.slice(valueStart, valueEnd + 1);
                    value = decode(value, decodeValue, containsPlus);

                    placeValue(dictionary, key, value, possiblyNested);

                    containsPlus = decodeValue = false;
                    possiblyNested = false;

                    keyStart = j + 1;
                    break;
                }
            }
        }
        else if (ch === 43 || ch === 37) {
            if (ch === 43) containsPlus = true;
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
        compact(dictionary);
    }

    return dictionary;
}

module.exports = QueryStringParser;
