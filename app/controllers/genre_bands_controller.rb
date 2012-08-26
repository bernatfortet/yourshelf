class GenreBandsController < ApplicationController
  # GET /genre_bands
  # GET /genre_bands.json
  def index
    @genre_bands = GenreBand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @genre_bands }
    end
  end

  # GET /genre_bands/1
  # GET /genre_bands/1.json
  def show
    @genre_band = GenreBand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @genre_band }
    end
  end

  # GET /genre_bands/new
  # GET /genre_bands/new.json
  def new
    @genre_band = GenreBand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @genre_band }
    end
  end

  # GET /genre_bands/1/edit
  def edit
    @genre_band = GenreBand.find(params[:id])
  end

  # POST /genre_bands
  # POST /genre_bands.json
  def create
    @genre_band = GenreBand.new(params[:genre_band])

    respond_to do |format|
      if @genre_band.save
        format.html { redirect_to @genre_band, notice: 'Genre band was successfully created.' }
        format.json { render json: @genre_band, status: :created, location: @genre_band }
      else
        format.html { render action: "new" }
        format.json { render json: @genre_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /genre_bands/1
  # PUT /genre_bands/1.json
  def update
    @genre_band = GenreBand.find(params[:id])

    respond_to do |format|
      if @genre_band.update_attributes(params[:genre_band])
        format.html { redirect_to @genre_band, notice: 'Genre band was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @genre_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_bands/1
  # DELETE /genre_bands/1.json
  def destroy
    @genre_band = GenreBand.find(params[:id])
    @genre_band.destroy

    respond_to do |format|
      format.html { redirect_to genre_bands_url }
      format.json { head :no_content }
    end
  end
end
