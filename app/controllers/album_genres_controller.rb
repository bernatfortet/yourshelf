class AlbumGenresController < ApplicationController
  # GET /album_genres
  # GET /album_genres.json
  def index
    @album_genres = AlbumGenre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @album_genres }
    end
  end

  # GET /album_genres/1
  # GET /album_genres/1.json
  def show
    @album_genre = AlbumGenre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album_genre }
    end
  end

  # GET /album_genres/new
  # GET /album_genres/new.json
  def new
    @album_genre = AlbumGenre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album_genre }
    end
  end

  # GET /album_genres/1/edit
  def edit
    @album_genre = AlbumGenre.find(params[:id])
  end

  # POST /album_genres
  # POST /album_genres.json
  def create
    @album_genre = AlbumGenre.new(params[:album_genre])

    respond_to do |format|
      if @album_genre.save
        format.html { redirect_to @album_genre, notice: 'Album genre was successfully created.' }
        format.json { render json: @album_genre, status: :created, location: @album_genre }
      else
        format.html { render action: "new" }
        format.json { render json: @album_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /album_genres/1
  # PUT /album_genres/1.json
  def update
    @album_genre = AlbumGenre.find(params[:id])

    respond_to do |format|
      if @album_genre.update_attributes(params[:album_genre])
        format.html { redirect_to @album_genre, notice: 'Album genre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_genres/1
  # DELETE /album_genres/1.json
  def destroy
    @album_genre = AlbumGenre.find(params[:id])
    @album_genre.destroy

    respond_to do |format|
      format.html { redirect_to album_genres_url }
      format.json { head :no_content }
    end
  end
end
