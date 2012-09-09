class App.Shelf extends Spine.Controller
	constructor: ->
		super
		console.log("asdf");

	close: ->
		$("#Shelf").attr("data-state", "closed")