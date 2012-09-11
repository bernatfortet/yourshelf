class App.Player extends Spine.Controller

	events:
		"click #PrevBtn" : "previousHandler"
		"click #PlayBtn" : "playHandler"
		"click #NextBtn" : "nextHandler"

	constructor: ->
		super
		@log " Start player controller "

		this.server = io.connect('http://localhost:8080')

		this.server.on 'onSendSong', (data) ->
			console.log( "Recieving song"  + data )

	# Interactino Handlers =================================

	previousHandler: ->
		alert("prev Clicked")
	
	playHandler: ( song ) ->
<<<<<<< HEAD
		# console.log( song )
		this.onPlaySong( song )
		# alert("play Clicked, look at console log")
=======
		console.log( song )
		#alert("play Clicked, look at console log")
>>>>>>> 4b6689bace6c68a8f9d7e37da2cd2573e1a78e37

	nextHandler: ->
		alert("next Clicked")

	# Emitters =================================

	onPlaySong: ( song ) ->
		this.send( "onPlaySong", "Testing onPlaySong #{song.id}" )

	# Utils =================================
	send: ( type, params ) ->
		console.log( "Sending --> type: #{type}");
		this.server.emit( type, params )
