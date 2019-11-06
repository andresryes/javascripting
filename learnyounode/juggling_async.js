var http = require('http')
var total  = 3
var count = 0
var results = []

function collect(url, index) {
  var result = ''
  http.get(url, function (res) {
    res.setEncoding('utf8')

    res.on('data', function (data) {
      result += data
    })

    res.on('end', function () {
      results[index] = result
      count++
      if (count == total) {
        printResults()
      }
    })

    res.on('err', console.error)
  })
}

function printResults() {
  for(var i = 0; i < results.length; i++) {
    console.log(results[i])
  }
}

for(var i = 0; i < total; i++) {
  collect(process.argv[i + 2], i)
}
