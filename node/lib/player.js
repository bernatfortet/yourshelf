
TestLib = require('./testLib.js')

var Player = {
	io: null,

	init: function( io ){
		console.log("Initializing Player");
		
		this.io = io;
		TestLib.init();

		this.setListeners( );
	},

	setListeners: function( ){

		this.io.sockets.on('connection', function ( client ) {
			TestLib.onClientConnects();

			//client.emit('messages', {hello:'world'})

			/*
			client.on('messages', function( data ){
			client.broadcast.emit("messages", data )
			});
			*/

			client.on('onPlaySong', function( song_id ) {
				console.log(" client requests song " + song_id )
				client.emit( "onSendSong", song_id );
			});

			/*

			client.on('publish', function( message ){
			io.sockets.send( message );
			});

			client.on('broadcast', function( message ){
			client.broadcast.send( message );
			});

			client.on('whisper', function( message ){
			client.broadcast.emit( 'secret', message );
			});

			*/


		});

	}
}
module.exports = Player;
