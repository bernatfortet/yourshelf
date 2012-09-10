class App.Songs extends Spine.Controller

	events:
		"click" : "playSong"

	constructor: ->
		super
		@log(" Start Songs Controller ")

	playSong: ->
		playHandler( this.el )
			