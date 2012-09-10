class App.Bands extends Spine.Controller
	constructor: ->
		super
		@log(" Start Band Controller ")

		$(".Album").each ->
			new App.Albums({ el: $(this) })
			