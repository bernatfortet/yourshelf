class App.Songs extends Spine.Controller

	events:
		"click" : "playSong"

	constructor: ->
		super
		@log(" Start Songs Controller ")

	playSong: ->
		console.log("asdf")
		App.player.playHandler( this.item )
			