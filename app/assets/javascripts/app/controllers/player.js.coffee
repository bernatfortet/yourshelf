class App.Player extends Spine.Controller
	@extend(Spine.Events)

	events:
		"click #PrevBtn" : "previousHandler"
		"click #PlayBtn" : "playHandler"
		"click #NextBtn" : "nextHandler"

	constructor: ->
		super
		@log " Start player controller "
		Spine.bind "onPlayAlbum", @onPlayAlbum

	
	onPlayAlbum: (data) =>
		if data.albumId? && data.songId?
			songId = 
		else
			alert("No albumId or songId");


	previousHandler: ->
		alert("prev Clicked")
	
	playHandler: ->
		alert("play Clicked")

	nextHandler: ->
		alert("next Clicked")