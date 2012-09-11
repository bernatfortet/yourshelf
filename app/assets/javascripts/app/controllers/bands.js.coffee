class App.Bands extends Spine.Controller
	constructor: ->
		super
		@log(" Start Band Controller ")

		App.Band

		$(".Album").each ( index, element ) =>
			album_id = $(element).attr("data-id")
			this.fetchAlbum( album_id )

			
	initializeAlbum: ( album_id, element ) ->
		new App.Albums({ el: $(element), item: App.Album.find( album_id ) })

	fetchAlbum: ( album_id, element ) ->
		$.get( App.Album.url( album_id + ".json" ) )
			.success ( response ) =>
				App.Album.refresh( response )
				this.initializeAlbum( album_id, element )

