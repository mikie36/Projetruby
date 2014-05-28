class PersoScenesController < ApplicationController
  # GET /perso_scenes
  # GET /perso_scenes.json
  def index
    @perso_scenes = PersoScene.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perso_scenes }
    end
  end

  # GET /perso_scenes/1
  # GET /perso_scenes/1.json
  def show
    @perso_scene = params[:id]
    @id = params[:id]
    @result = PersoScene.where(perso_id: params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perso_scene }
    end
  end

  # GET /perso_scenes/new
  # GET /perso_scenes/new.json
  def new
    @perso_scene = PersoScene.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perso_scene }
    end
  end

  # GET /perso_scenes/1/edit
  def edit
    @perso_scene = PersoScene.new
    @id = params[:id]
    @result = PersoScene.where(perso_id: params[:id])
  end

  # POST /perso_scenes
  # POST /perso_scenes.json
  def create
    @perso_scene = PersoScene.new(params[:perso_scene])

    respond_to do |format|
      if @perso_scene.save
        format.html { redirect_to perso_scenes_path(@perso_scene.perso_id), notice: 'Perso scene was successfully created.' }
        format.json { render json: perso_scenes_path(@perso_scene.perso_id), status: :created, location: @perso_scene }
      else
        format.html { redirect_to perso_scenes_path(@perso_scene.perso_id), notice: 'Personnage deja ajoute.' }
        format.json { render json: @perso_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perso_scenes/1
  # PUT /perso_scenes/1.json
  def update
    @perso_scene = PersoScene.find(params[:id])

    respond_to do |format|
      if @perso_scene.update_attributes(params[:perso_scene])
        format.html { redirect_to @perso_scene, notice: 'Perso scene was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perso_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perso_scenes/1
  # DELETE /perso_scenes/1.json
  def destroy
    @perso_scene = PersoScene.find(params[:id])
    @perso_scene.destroy

    respond_to do |format|
      format.html { redirect_to perso_scenes_url }
      format.json { head :no_content }
    end
  end
end
