class SceneChapitresController < ApplicationController
  # GET /scene_chapitres
  # GET /scene_chapitres.json
  def index
    @scene_chapitres = SceneChapitre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scene_chapitres }
    end
  end

  # GET /scene_chapitres/1
  # GET /scene_chapitres/1.json
  def show
    @scene_chapitre = params[:id]
    @id = params[:id]
    @result = SceneChapitre.where(chapitre_id: params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scene_chapitre }
    end
  end

  # GET /scene_chapitres/new
  # GET /scene_chapitres/new.json
  def new
    @scene_chapitre = SceneChapitre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scene_chapitre }
    end
  end

  # GET /scene_chapitres/1/edit
  def edit
    @scene_chapitre = SceneChapitre.new
    @id = params[:id]
    @result = SceneChapitre.where(chapitre_id: params[:id])
  end

  # POST /scene_chapitres
  # POST /scene_chapitres.json
  def create
    @scene_chapitre = SceneChapitre.new(params[:scene_chapitre])

    respond_to do |format|
      if @scene_chapitre.save
        format.html { redirect_to scene_chapitres_path(@scene_chapitre.chapitre_id), notice: 'Scene chapitre was successfully created.' }
        format.json { render json: scene_chapitres_path(@scene_chapitre.chapitre_id), status: :created, location: @scene_chapitre }
      else
        format.html { redirect_to scene_chapitres_path(@scene_chapitre.chapitre_id), notice: 'Scene deja ajoute.' }
        format.json { render json: @scene_chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scene_chapitres/1
  # PUT /scene_chapitres/1.json
  def update
    @scene_chapitre = SceneChapitre.find(params[:id])

    respond_to do |format|
      if @scene_chapitre.update_attributes(params[:scene_chapitre])
        format.html { redirect_to @scene_chapitre, notice: 'Scene chapitre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scene_chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scene_chapitres/1
  # DELETE /scene_chapitres/1.json
  def destroy
    @scene_chapitre = SceneChapitre.find(params[:id])
    @scene_chapitre.destroy

    respond_to do |format|
      format.html { redirect_to scene_chapitres_url }
      format.json { head :no_content }
    end
  end
end
