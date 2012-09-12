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

		@log "Media type: " + @typeMedia

	#Handlers =================================

	playAlbum: (song) ->
		console.log(song)
	
		@player.stop() if @player?
		@player = new buzz.sound(["http://127.0.0.1:8888/?id="+song.path+"&media="+@typeMedia]);

		@durationSong = song.length;
		@duration.text( buzz.toTimer(@durationSong) )
		@player.bind("timeupdate", @onTimeUpdate );
		@player.bind("progress", @onProgress );

	previousHandler: ->
		alert("prev Clicked")
	
	playHandler: ->
		@player.togglePlay() if @player?

	nextHandler: ->
		alert("next Clicked")

	timelineHandler: (e) =>
		if @player?
			x = e.clientX;
			left = $(e.target).offset().left;
			width = $(e.target).width();	     
			tantX1 = ((x-left)/width);
			@log "timelineHandler " + @durationSong*tantX1 
			@player.setTime(@durationSong*tantX1)


	#Player component handlers

	onProgress: (event) =>
		buffered  = @player.getBuffered();
		time = @player.getTime();
		@player.play() if(buffered[0]? && buffered[0].end > time + 10)
	
	onTimeUpdate: (e) =>
		time = @player.getTime()
		timer = buzz.toTimer(time)
		percent = buzz.toPercent( time, @durationSong )
		@currentTime.text(timer)
		@progressBar.css("width", percent + "%")
