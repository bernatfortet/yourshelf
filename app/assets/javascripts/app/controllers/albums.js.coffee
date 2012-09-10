class App.Albums extends Spine.Controller

	constructor: ->
		super
		@log(" Start Albums Controller ")

		$(".Song").each ->
			new App.Songs({ el: $(this) })
			