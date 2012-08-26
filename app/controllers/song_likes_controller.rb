class SongLikesController < ApplicationController
  # GET /song_likes
  # GET /song_likes.json
  def index
    @song_likes = SongLike.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @song_likes }
    end
  end

  # GET /song_likes/1
  # GET /song_likes/1.json
  def show
    @song_like = SongLike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song_like }
    end
  end

  # GET /song_likes/new
  # GET /song_likes/new.json
  def new
    @song_like = SongLike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @song_like }
    end
  end

  # GET /song_likes/1/edit
  def edit
    @song_like = SongLike.find(params[:id])
  end

  # POST /song_likes
  # POST /song_likes.json
  def create
    @song_like = SongLike.new(params[:song_like])

    respond_to do |format|
      if @song_like.save
        format.html { redirect_to @song_like, notice: 'Song like was successfully created.' }
        format.json { render json: @song_like, status: :created, location: @song_like }
      else
        format.html { render action: "new" }
        format.json { render json: @song_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /song_likes/1
  # PUT /song_likes/1.json
  def update
    @song_like = SongLike.find(params[:id])

    respond_to do |format|
      if @song_like.update_attributes(params[:song_like])
        format.html { redirect_to @song_like, notice: 'Song like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @song_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_likes/1
  # DELETE /song_likes/1.json
  def destroy
    @song_like = SongLike.find(params[:id])
    @song_like.destroy

    respond_to do |format|
      format.html { redirect_to song_likes_url }
      format.json { head :no_content }
    end
  end
end
