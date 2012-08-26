class AlbumSongsController < ApplicationController
  # GET /album_songs
  # GET /album_songs.json
  def index
    @album_songs = AlbumSong.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @album_songs }
    end
  end

  # GET /album_songs/1
  # GET /album_songs/1.json
  def show
    @album_song = AlbumSong.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album_song }
    end
  end

  # GET /album_songs/new
  # GET /album_songs/new.json
  def new
    @album_song = AlbumSong.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album_song }
    end
  end

  # GET /album_songs/1/edit
  def edit
    @album_song = AlbumSong.find(params[:id])
  end

  # POST /album_songs
  # POST /album_songs.json
  def create
    @album_song = AlbumSong.new(params[:album_song])

    respond_to do |format|
      if @album_song.save
        format.html { redirect_to @album_song, notice: 'Album song was successfully created.' }
        format.json { render json: @album_song, status: :created, location: @album_song }
      else
        format.html { render action: "new" }
        format.json { render json: @album_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /album_songs/1
  # PUT /album_songs/1.json
  def update
    @album_song = AlbumSong.find(params[:id])

    respond_to do |format|
      if @album_song.update_attributes(params[:album_song])
        format.html { redirect_to @album_song, notice: 'Album song was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_songs/1
  # DELETE /album_songs/1.json
  def destroy
    @album_song = AlbumSong.find(params[:id])
    @album_song.destroy

    respond_to do |format|
      format.html { redirect_to album_songs_url }
      format.json { head :no_content }
    end
  end
end
