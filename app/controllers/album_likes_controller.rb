class AlbumLikesController < ApplicationController
  # GET /album_likes
  # GET /album_likes.json
  def index
    @album_likes = AlbumLike.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @album_likes }
    end
  end

  # GET /album_likes/1
  # GET /album_likes/1.json
  def show
    @album_like = AlbumLike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album_like }
    end
  end

  # GET /album_likes/new
  # GET /album_likes/new.json
  def new
    @album_like = AlbumLike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album_like }
    end
  end

  # GET /album_likes/1/edit
  def edit
    @album_like = AlbumLike.find(params[:id])
  end

  # POST /album_likes
  # POST /album_likes.json
  def create
    @album_like = AlbumLike.new(params[:album_like])

    respond_to do |format|
      if @album_like.save
        format.html { redirect_to @album_like, notice: 'Album like was successfully created.' }
        format.json { render json: @album_like, status: :created, location: @album_like }
      else
        format.html { render action: "new" }
        format.json { render json: @album_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /album_likes/1
  # PUT /album_likes/1.json
  def update
    @album_like = AlbumLike.find(params[:id])

    respond_to do |format|
      if @album_like.update_attributes(params[:album_like])
        format.html { redirect_to @album_like, notice: 'Album like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_likes/1
  # DELETE /album_likes/1.json
  def destroy
    @album_like = AlbumLike.find(params[:id])
    @album_like.destroy

    respond_to do |format|
      format.html { redirect_to album_likes_url }
      format.json { head :no_content }
    end
  end
end
