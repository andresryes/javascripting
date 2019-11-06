var http = require('http')

http.get(process.argv[2], function (res) {
  var d = ''
  res.setEncoding('utf8')
  res.on('data', function(data) {
    d += data
  })
  res.on('end', function() {
    console.log(d.length)
    console.log(d)
  })
  res.on('err', console.error)
})
