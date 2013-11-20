var querystringparser = require("../js/querystringparser.js");
var Benchmark = require("benchmark");
var qs = require("qs");

var queryStr = process.argv[2];

console.log("Running suite with query string: ");
console.log("");
console.log(queryStr);
console.log("");

console.log("warming up");
l = 10000;

while(l--) {
    qs.parse(queryStr);
    querystringparser.parse(queryStr);
}

console.log("");
console.log("benchmarking");
console.log("");

var suite = new Benchmark.Suite();
suite.add("querystringparser", function() {
    querystringparser.parse(queryStr);
})
.add("qs", function(){
    qs.parse(queryStr);
}).on("cycle", function(e) {
    console.log("" + e.target);
    gc();

}).run();
