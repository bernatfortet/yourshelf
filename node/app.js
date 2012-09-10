var io = require('socket.io').listen(8888);
var fs = require('fs');

/*
var buffer = fs.readFileSync('music/Amanecio.mp3');
console.log("SIZE REAL: " + buffer.length);

io.sockets.on('connection', function (socket) {
  var out = new Buffer(128);
  for(var i = 0; i < buffer.length; i+=128) {
	buffer.copy(out, 0, i, i+128);
	socket.send(out);
  }
  console.log("HOAH");
});
*/

io.sockets.on('connection', function (socket) {
  
  socket.on('new_song', function (data) {
    console.log(data);
  });
  
});
