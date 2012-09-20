#= require ../models/song

class App.Player extends Spine.Controller

	logPrefix: "(Player)"

	elements:
		"#Progress" 	: "progressBar"
		"#CurrentTime"  : "currentTime"
		"#Duration" 	: "duration"
		"#Timeline"		: "timeBar"

	events:
		"click #PrevBtn" : "previousHandler"
		"click #PlayBtn" : "playHandler"
		"click #NextBtn" : "nextHandler"
		"click #Timeline": "timelineHandler"

	constructor: ->
		super
		@log " Start player controller "
		@inizialitze()

	inizialitze: ->
		if buzz.isOGGSupported()
			@typeMedia = "ogg"
		else 
			@typeMedia = "mp3"

		@playerlist = {}
		@songPosition = 0

		@log "Media type: " + @typeMedia

	#Handlers =================================

	#TODO: rebre album id, song position or song id
	playAlbum: (song) ->
		console.log(song)
	
		@songPosition = 0
		@playerlist = App.Song.all()

		@player.stop() if @player?

		while @playerlist[@songPosition].id != song.id
			++@songPosition

		@_playSong(@playerlist[@songPosition])
		@log("Playing song " + @songPosition)

		#group = []
		#for al in @album
		#	group.push( new buzz.sound(["http://127.0.0.1:8888/?id="+song.path+"&media="+@typeMedia] ) )

		#@player = new buzz.group(group);	

	previousHandler: ->

		@player.stop() if @player?
		
		if @songPosition > 0
			--@songPosition
			@_playSong(@playerlist[@songPosition])
			@log("Playing song " + @songPosition)
		else
			alert("first song played, u cant prev")
	
	playHandler: ->
		@log("Playing song " + @songPosition)
		@player.togglePlay() if @player?

	nextHandler: ->
		@player.stop() if @player?
		
		if @songPosition < @playerlist.length-1
			++@songPosition
			@_playSong(@playerlist[@songPosition])
			@log("Playing song " + @songPosition)
		else
			alert("last song played, u cant next")

	timelineHandler: (e) =>
		if @player?
			x = e.clientX;
			left = $(e.target).offset().left;
			width = $(e.target).width();	     
			tantX1 = ((x-left)/width);
			@log "timelineHandler " + @durationSong*tantX1 
			@player.setTime(@durationSong*tantX1)
			console.log(@player)


	#Player component handlers

	onProgress: (event) =>
		#buffered  = @player.getBuffered();
		#time = @player.getTime();
		#@player.play() if(buffered[0]? && buffered[0].end > time + 10)
		#console.log(buffered)
	
	onTimeUpdate: (e) =>
		time = @player.getTime()
		timer = buzz.toTimer(time)
		percent = buzz.toPercent( time, @durationSong )
		@currentTime.text(timer)
		@progressBar.css("width", percent + "%")

	onSeeking: (e) =>
		console.log(e)
	
	onSeeked: (e) =>
		console.log(e)
		console.log(e.target)


	# Private functions

	_playSong: (song) =>
		@player = new buzz.sound(["http://127.0.0.1:8888/?id="+song.path+"&media="+@typeMedia], {preload: true, autoplay: true, loop: false});
		@player.set("duration", @durationSong) #HACK
		@durationSong = song.length;
		@duration.text( buzz.toTimer(@durationSong) )
		@player.bind("timeupdate", @onTimeUpdate );
		@player.bind("progress", @onProgress );
		@player.bind("seeked", @onSeeked );
		@player.bind("seeking", @onSeeking );
		@player.bind("waiting", @onSeeking );

