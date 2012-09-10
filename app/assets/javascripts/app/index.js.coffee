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

		new App.Player({el: "#Player"})
		new App.Shelf()

		Spine.Route.setup()

		this.initializer()

	initializer: ->
		s = Spine.Route.path.split("/")
		location = s[1];
		# console.log( location )

		switch( location )
			when "bands" then new App.Bands({ el: ".Band"})


window.App = App