class CivilizationsController < ApplicationController
  # GET /civilizations
  # GET /civilizations.json
  def index
    @civilizations = Civilization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @civilizations }
    end
  end

  # GET /civilizations/1
  # GET /civilizations/1.json
  def show
    @civilization = Civilization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @civilization }
    end
  end

  # GET /civilizations/new
  # GET /civilizations/new.json
  def new
    @civilization = Civilization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @civilization }
    end
  end

  # GET /civilizations/1/edit
  def edit
    @civilization = Civilization.find(params[:id])
  end

  # POST /civilizations
  # POST /civilizations.json
  def create
    @civilization = Civilization.new(params[:civilization])

    respond_to do |format|
      if @civilization.save
        format.html { redirect_to @civilization, notice: 'Civilization was successfully created.' }
        format.json { render json: @civilization, status: :created, location: @civilization }
      else
        format.html { render action: "new" }
        format.json { render json: @civilization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /civilizations/1
  # PUT /civilizations/1.json
  def update
    @civilization = Civilization.find(params[:id])

    respond_to do |format|
      if @civilization.update_attributes(params[:civilization])
        format.html { redirect_to @civilization, notice: 'Civilization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @civilization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civilizations/1
  # DELETE /civilizations/1.json
  def destroy
    @civilization = Civilization.find(params[:id])
    @civilization.destroy

    respond_to do |format|
      format.html { redirect_to civilizations_url }
      format.json { head :no_content }
    end
  end
end
