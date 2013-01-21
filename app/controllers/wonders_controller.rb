class WondersController < ApplicationController
  # GET /wonders
  # GET /wonders.json
  def index
    @wonders = Wonder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wonders }
    end
  end

  # GET /wonders/1
  # GET /wonders/1.json
  def show
    @wonder = Wonder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wonder }
    end
  end

  # GET /wonders/new
  # GET /wonders/new.json
  def new
    @wonder = Wonder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wonder }
    end
  end

  # GET /wonders/1/edit
  def edit
    @wonder = Wonder.find(params[:id])
  end

  # POST /wonders
  # POST /wonders.json
  def create
    @wonder = Wonder.new(params[:wonder])

    respond_to do |format|
      if @wonder.save
        format.html { redirect_to @wonder, notice: 'Wonder was successfully created.' }
        format.json { render json: @wonder, status: :created, location: @wonder }
      else
        format.html { render action: "new" }
        format.json { render json: @wonder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wonders/1
  # PUT /wonders/1.json
  def update
    @wonder = Wonder.find(params[:id])

    respond_to do |format|
      if @wonder.update_attributes(params[:wonder])
        format.html { redirect_to @wonder, notice: 'Wonder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wonder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wonders/1
  # DELETE /wonders/1.json
  def destroy
    @wonder = Wonder.find(params[:id])
    @wonder.destroy

    respond_to do |format|
      format.html { redirect_to wonders_url }
      format.json { head :no_content }
    end
  end
end
