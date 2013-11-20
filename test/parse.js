//Tests based on node-querystring tests
/*
Copyright (c) 2010 TJ Holowaychuk <tj@vision-media.ca>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the 'Software'), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
var qs = require('../js/querystringparser.js');
var expect = require('expect.js');
var assert = require("assert");


Array.prototype.dummy = function () {}; // is should not be affected by Array.prototype

describe('qs.parse()', function () {
    it('should support the basics', function () {
        qs.parse('foo=bar').hasOwnProperty('foo');
        qs.parse('foo[bar]=baz').foo.hasOwnProperty('foo');

        expect(qs.parse('0=foo')).to.eql({
            '0': 'foo'
        });

        expect(qs.parse('foo=c++'))
            .to.eql({
                foo: 'c  '
            });

        expect(qs.parse('a[>=]=23'))
            .to.eql({
                a: {
                    '>=': '23'
                }
            });

        expect(qs.parse('a[<=>]==23'))
            .to.eql({
                a: {
                    '<=>': '=23'
                }
            });

        expect(qs.parse('a[==]=23'))
            .to.eql({
                a: {
                    '==': '23'
                }
            });

        expect(qs.parse('foo'))
            .to.eql({
                foo: ''
            });

        expect(qs.parse('foo=bar'))
            .to.eql({
                foo: 'bar'
            });

        expect(qs.parse(' foo = bar = baz '))
            .to.eql({
                ' foo ': ' bar = baz '
            });

        expect(qs.parse('foo=bar=baz'))
            .to.eql({
                foo: 'bar=baz'
            });

        expect(qs.parse('foo=bar&bar=baz'))
            .to.eql({
                foo: 'bar',
                bar: 'baz'
            });

        expect(qs.parse('foo=bar&baz'))
            .to.eql({
                foo: 'bar',
                baz: ''
            });

        expect(qs.parse('cht=p3&chd=t:60,40&chs=250x100&chl=Hello|World'))
            .to.eql({
                cht: 'p3',
                chd: 't:60,40',
                chs: '250x100',
                chl: 'Hello|World'
            });
    })

    it('should support encoded = signs', function () {
        expect(qs.parse('he%3Dllo=th%3Dere'))
            .to.eql({
                'he=llo': 'th=ere'
            });
    })

    it('should support nesting', function () {
        expect(qs.parse('ops[>=]=25'))
            .to.eql({
                ops: {
                    '>=': '25'
                }
            });

        expect(qs.parse('user[name]=tj'))
            .to.eql({
                user: {
                    name: 'tj'
                }
            });

        expect(qs.parse('user[name][first]=tj&user[name][last]=holowaychuk'))
            .to.eql({
                user: {
                    name: {
                        first: 'tj',
                        last: 'holowaychuk'
                    }
                }
            });
    })

    it('should support array notation', function () {
        expect(qs.parse('images[]'))
            .to.eql({
                images: []
            });

        expect(qs.parse('user[]=tj'))
            .to.eql({
                user: ['tj']
            });

        expect(qs.parse('user[]=tj&user[]=tobi&user[]=jane'))
            .to.eql({
                user: ['tj', 'tobi', 'jane']
            });

        expect(qs.parse('user[names][]=tj&user[names][]=tyler'))
            .to.eql({
                user: {
                    names: ['tj', 'tyler']
                }
            });

        expect(qs.parse('user[names][]=tj&user[names][]=tyler&user[email]=tj@vision-media.ca'))
            .to.eql({
                user: {
                    names: ['tj', 'tyler'],
                    email: 'tj@vision-media.ca'
                }
            });

        expect(qs.parse('items=a&items=b'))
            .to.eql({
                items: ['a', 'b']
            });

        expect(qs.parse('user[names]=tj&user[names]=holowaychuk&user[names]=TJ'))
            .to.eql({
                user: {
                    names: ['tj', 'holowaychuk', 'TJ']
                }
            });

        expect(qs.parse('user[name][first]=tj&user[name][first]=TJ'))
            .to.eql({
                user: {
                    name: {
                        first: ['tj', 'TJ']
                    }
                }
            });

        var o = qs.parse('existing[fcbaebfecc][name][last]=tj')
        expect(o).to.eql({
            existing: {
                'fcbaebfecc': {
                    name: {
                        last: 'tj'
                    }
                }
            }
        })
        expect(Array.isArray(o.existing)).to.equal(false);
    })

    it('should support arrays with indexes', function () {
        expect(qs.parse('foo[0]=bar&foo[1]=baz')).to.eql({
            foo: ['bar', 'baz']
        });
        expect(qs.parse('foo[1]=bar&foo[0]=baz')).to.eql({
            foo: ['baz', 'bar']
        });
        expect(qs.parse('foo[base64]=RAWR')).to.eql({
            foo: {
                base64: 'RAWR'
            }
        });
        expect(qs.parse('foo[64base]=RAWR')).to.eql({
            foo: {
                '64base': 'RAWR'
            }
        });
        expect(qs.parse('a[]=0&a[]=1&a[]=2')).to.eql({
            a: ['0', '1', '2']
        });
    })

    it('should expand to an array when dupliate keys are present', function () {
        expect(qs.parse('items=bar&items=baz&items=raz'))
            .to.eql({
                items: ['bar', 'baz', 'raz']
            });
    })

    it('should support right-hand side brackets', function () {
        expect(qs.parse('pets=["tobi"]'))
            .to.eql({
                pets: '["tobi"]'
            });

        expect(qs.parse('operators=[">=", "<="]'))
            .to.eql({
                operators: '[">=", "<="]'
            });

        expect(qs.parse('op[>=]=[1,2,3]'))
            .to.eql({
                op: {
                    '>=': '[1,2,3]'
                }
            });

        expect(qs.parse('op[>=]=[1,2,3]&op[=]=[[[[1]]]]'))
            .to.eql({
                op: {
                    '>=': '[1,2,3]',
                    '=': '[[[[1]]]]'
                }
            });
    })

    it('should support empty values', function () {
        expect(qs.parse('')).to.eql({});
        expect(qs.parse(undefined)).to.eql({});
        expect(qs.parse(null)).to.eql({});
    })

    it('should transform arrays to objects', function () {
        expect(qs.parse('foo[0]=bar&foo[bad]=baz')).to.eql({
            foo: {
                0: "bar",
                bad: "baz"
            }
        });
        expect(qs.parse('foo[bad]=baz&foo[0]=bar')).to.eql({
            foo: {
                0: "bar",
                bad: "baz"
            }
        });
    })

    it('should support malformed uri chars', function () {
        expect(qs.parse('{%:%}')).to.eql({
            '{%:%}': ''
        });
        expect(qs.parse('foo=%:%}')).to.eql({
            'foo': '%:%}'
        });
    })

    it('should support semi-parsed strings', function () {
        expect(qs.parse({
            'user[name]': 'tobi'
        }))
            .to.eql({
                user: {
                    name: 'tobi'
                }
            });

        expect(qs.parse({
            'user[name]': 'tobi',
            'user[email][main]': 'tobi@lb.com'
        }))
            .to.eql({
                user: {
                    name: 'tobi',
                    email: {
                        main: 'tobi@lb.com'
                    }
                }
            });
    })

    it('should not produce empty keys', function () {
        expect(qs.parse('_r=1&'))
            .to.eql({
                _r: '1'
            })
    })

    it('should not create big arrays of null objects', function () {
        var q = qs.parse('a[999999999]=1&a[2]=2');
        expect(q['a'].length).to.eql(2);
        expect(q).to.eql({
            a: ['2', '1']
        });
    })

    if ('undefined' == typeof window) {
        it('should not be possible to access Object prototype', function () {
            qs.parse('constructor[prototype][bad]=bad');
            qs.parse('bad[constructor][prototype][bad]=bad');
            expect(Object.prototype.bad).to.be(undefined);
        });

        it('should not throw when a native prototype has an enumerable property', function () {
            Object.prototype.crash = '';
            expect(qs.parse.bind(null, 'test')).to.not.throwException();
        })
    }


    it("should have conclusive DoS protection", function () {
        assert(qs.maxKeys === 256);
        var keys257 = new Array(258).join("a=b&").slice(0, -1);
        var keys256 = new Array(257).join("a=b&").slice(0, -1);
        var keys255 = new Array(256).join("a=b&").slice(0, -1);
        var pass = qs.parse(keys255);
        assert(pass.a.length === 255);
        var pass2 = qs.parse(keys256);
        assert(pass2.a.length === 256);

        try {
            qs.parse(keys257);
            assert.fail();
        } catch (e) {
            assert(e instanceof RangeError);
        }

        assert(qs.maxDepth === 4);
        var depth3 = "a[b][c]=3";
        var depth4 = "a[b][c][d]=4";
        var depth5 = "a[b][c][d][e]=5";

        var pass = qs.parse(depth3);
        assert.deepEqual(pass, {
            a: {
                b: {
                    c: 3
                }
            }
        });
        var pass2 = qs.parse(depth4);
        assert.deepEqual(pass2, {
            a: {
                b: {
                    c: {
                        d: 4
                    }
                }
            }
        });


        try {
            qs.parse(depth5);
            assert.fail();
        } catch (e) {
            assert(e instanceof RangeError);
        }

        assert(qs.maxLength === 32768);
        var length32768 = "b=" + new Array(32768 - 1).join("a");
        var length32769 = "b=" + new Array(32768).join("a");

        var pass = qs.parse(length32768);
        assert.deepEqual(pass, {
            b: new Array(32768 - 1).join("a")
        });

        try {
            qs.parse(length32769);
            assert.fail();
        } catch (e) {
            assert(e instanceof RangeError);
        }
    });
})
