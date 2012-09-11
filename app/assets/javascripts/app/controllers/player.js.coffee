class App.Player extends Spine.Controller

	events:
		"click #PrevBtn" : "previousHandler"
		"click #PlayBtn" : "playHandler"
		"click #NextBtn" : "nextHandler"

	constructor: ->
		super
		@log " Start player controller "

	previousHandler: ->
		alert("prev Clicked")
	
	playHandler: ( song ) ->
		console.log( song )
		#alert("play Clicked, look at console log")

	nextHandler: ->
		alert("next Clicked")