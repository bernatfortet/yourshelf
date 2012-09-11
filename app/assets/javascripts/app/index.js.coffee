#= require json2
#= require jquery
#= require spine
#= require spine/manager
#= require spine/ajax
#= require spine/route

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

class App extends Spine.Controller

	constructor: ->
		super

		# Initialize controllers:
		#  @append(@items = new App.Items)
		#  ...

		App.player = new App.Player({el: "#Player"})
		App.shelf = new App.Shelf({ el: "#Shelf" })

		Spine.Route.setup()

		this.initializer()

	initializer: ->
		s = Spine.Route.path.split("/")
		location = s[1];
		# console.log( location )

		switch( location )
			when "bands" then band_id = s[2]; this.fetchBand( band_id )

	initializeBandPage: ( band_id ) ->
		new App.Bands({ el: ".Band", item: App.Band.find( band_id) })

	fetchBand: ( band_id ) ->
		$.get( App.Band.url( band_id + ".json" ) )
			.success ( response ) =>
				App.Band.refresh( response )
				this.initializeBandPage( band_id )




window.App = App