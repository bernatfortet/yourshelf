class App.Album extends Spine.Model
	@configure 'Album', 'title', 'description', 'listened_count', 'purchased_count'
	@extend Spine.Model.Ajax