class App.Albums extends Spine.Controller

	constructor: ->
		super
		@log(" Start Albums Controller ")

		$(".Song").each ( index, element ) =>
			song_id = $(element).attr("data-id")
			this.fetchSong( song_id, element )


	initializeSong: ( song_id, element ) ->
		new App.Songs({ el: $(element), item: App.Song.find( song_id ) })

	fetchSong: ( song_id, element ) ->
		$.get( App.Song.url( song_id + ".json" ) )
			.success ( response ) =>
				App.Song.refresh( response )
				this.initializeSong( song_id, element )
