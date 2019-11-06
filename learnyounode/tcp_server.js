var net = require('net')
var strftime = require('strftime')


console.log("")
var server = net.createServer(function (socket) {
  console.log("")
  socket.write(strftime("%Y-%m-%d %H:%M\n", new Date()))
  socket.write("")
  socket.end("")
})

server.listen(process.argv[2])