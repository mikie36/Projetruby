class PersonnagesController < ApplicationController
  # GET /personnages
  # GET /personnages.json
  def index
    @personnages = Personnage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personnages }
    end
  end

  # GET /personnages/1
  # GET /personnages/1.json
  def show
    @personnage = Personnage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personnage }
    end
  end

  # GET /personnages/new
  # GET /personnages/new.json
  def new
    @personnage = Personnage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personnage }
    end
  end

  # GET /personnages/1/edit
  def edit
    @personnage = Personnage.find(params[:id])
  end

  # POST /personnages
  # POST /personnages.json
  def create
    @personnage = Personnage.new(params[:personnage])

    respond_to do |format|
      if @personnage.save
        format.html { redirect_to @personnage, notice: 'Personnage was successfully created.' }
        format.json { render json: @personnage, status: :created, location: @personnage }
      else
        format.html { render action: "new" }
        format.json { render json: @personnage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personnages/1
  # PUT /personnages/1.json
  def update
    @personnage = Personnage.find(params[:id])

    respond_to do |format|
      if @personnage.update_attributes(params[:personnage])
        format.html { redirect_to @personnage, notice: 'Personnage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personnage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnages/1
  # DELETE /personnages/1.json
  def destroy
    @personnage = Personnage.find(params[:id])
    @personnage.destroy

    respond_to do |format|
      format.html { redirect_to personnages_url }
      format.json { head :no_content }
    end
  end
end
