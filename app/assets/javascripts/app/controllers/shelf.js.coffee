class App.Shelf extends Spine.Controller
	constructor: ->
		super
		@log(" Start Shelf Controller ")

	close: ->
		$("#Shelf").attr("data-state", "closed")