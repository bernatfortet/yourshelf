class App.Song extends Spine.Model
	@configure 'Song', 'id', 'name', 'listened_count', 'length'
	@extend Spine.Model.Ajax