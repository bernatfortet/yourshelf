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
		# console.log( song )
		this.onPlaySong( song )
		# alert("play Clicked, look at console log")

	nextHandler: ->
		alert("next Clicked")

	# Emitters =================================

	onPlaySong: ( song ) ->
		this.send( "onPlaySong", "Testing onPlaySong #{song.id}" )

	# Utils =================================
	send: ( type, params ) ->
		console.log( "Sending --> type: #{type}");
		this.server.emit( type, params )
