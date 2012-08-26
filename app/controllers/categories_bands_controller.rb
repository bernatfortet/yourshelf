class CategoriesBandsController < ApplicationController
  # GET /categories_bands
  # GET /categories_bands.json
  def index
    @categories_bands = CategoriesBand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories_bands }
    end
  end

  # GET /categories_bands/1
  # GET /categories_bands/1.json
  def show
    @categories_band = CategoriesBand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categories_band }
    end
  end

  # GET /categories_bands/new
  # GET /categories_bands/new.json
  def new
    @categories_band = CategoriesBand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categories_band }
    end
  end

  # GET /categories_bands/1/edit
  def edit
    @categories_band = CategoriesBand.find(params[:id])
  end

  # POST /categories_bands
  # POST /categories_bands.json
  def create
    @categories_band = CategoriesBand.new(params[:categories_band])

    respond_to do |format|
      if @categories_band.save
        format.html { redirect_to @categories_band, notice: 'Categories band was successfully created.' }
        format.json { render json: @categories_band, status: :created, location: @categories_band }
      else
        format.html { render action: "new" }
        format.json { render json: @categories_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories_bands/1
  # PUT /categories_bands/1.json
  def update
    @categories_band = CategoriesBand.find(params[:id])

    respond_to do |format|
      if @categories_band.update_attributes(params[:categories_band])
        format.html { redirect_to @categories_band, notice: 'Categories band was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @categories_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_bands/1
  # DELETE /categories_bands/1.json
  def destroy
    @categories_band = CategoriesBand.find(params[:id])
    @categories_band.destroy

    respond_to do |format|
      format.html { redirect_to categories_bands_url }
      format.json { head :no_content }
    end
  end
end
