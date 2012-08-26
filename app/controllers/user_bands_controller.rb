class UserBandsController < ApplicationController
  # GET /user_bands
  # GET /user_bands.json
  def index
    @user_bands = UserBand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_bands }
    end
  end

  # GET /user_bands/1
  # GET /user_bands/1.json
  def show
    @user_band = UserBand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_band }
    end
  end

  # GET /user_bands/new
  # GET /user_bands/new.json
  def new
    @user_band = UserBand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_band }
    end
  end

  # GET /user_bands/1/edit
  def edit
    @user_band = UserBand.find(params[:id])
  end

  # POST /user_bands
  # POST /user_bands.json
  def create
    @user_band = UserBand.new(params[:user_band])

    respond_to do |format|
      if @user_band.save
        format.html { redirect_to @user_band, notice: 'User band was successfully created.' }
        format.json { render json: @user_band, status: :created, location: @user_band }
      else
        format.html { render action: "new" }
        format.json { render json: @user_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_bands/1
  # PUT /user_bands/1.json
  def update
    @user_band = UserBand.find(params[:id])

    respond_to do |format|
      if @user_band.update_attributes(params[:user_band])
        format.html { redirect_to @user_band, notice: 'User band was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_bands/1
  # DELETE /user_bands/1.json
  def destroy
    @user_band = UserBand.find(params[:id])
    @user_band.destroy

    respond_to do |format|
      format.html { redirect_to user_bands_url }
      format.json { head :no_content }
    end
  end
end
