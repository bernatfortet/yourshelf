class UserAlbumsController < ApplicationController
  # GET /user_albums
  # GET /user_albums.json
  def index
    @user_albums = UserAlbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_albums }
    end
  end

  # GET /user_albums/1
  # GET /user_albums/1.json
  def show
    @user_album = UserAlbum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_album }
    end
  end

  # GET /user_albums/new
  # GET /user_albums/new.json
  def new
    @user_album = UserAlbum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_album }
    end
  end

  # GET /user_albums/1/edit
  def edit
    @user_album = UserAlbum.find(params[:id])
  end

  # POST /user_albums
  # POST /user_albums.json
  def create
    @user_album = UserAlbum.new(params[:user_album])

    respond_to do |format|
      if @user_album.save
        format.html { redirect_to @user_album, notice: 'User album was successfully created.' }
        format.json { render json: @user_album, status: :created, location: @user_album }
      else
        format.html { render action: "new" }
        format.json { render json: @user_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_albums/1
  # PUT /user_albums/1.json
  def update
    @user_album = UserAlbum.find(params[:id])

    respond_to do |format|
      if @user_album.update_attributes(params[:user_album])
        format.html { redirect_to @user_album, notice: 'User album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_albums/1
  # DELETE /user_albums/1.json
  def destroy
    @user_album = UserAlbum.find(params[:id])
    @user_album.destroy

    respond_to do |format|
      format.html { redirect_to user_albums_url }
      format.json { head :no_content }
    end
  end
end
