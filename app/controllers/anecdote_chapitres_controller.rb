class AnecdoteChapitresController < ApplicationController
  # GET /anecdote_chapitres
  # GET /anecdote_chapitres.json
  def index
    @anecdote_chapitres = AnecdoteChapitre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anecdote_chapitres }
    end
  end

  # GET /anecdote_chapitres/1
  # GET /anecdote_chapitres/1.json
  def show
    @anecdote_chapitre = params[:id]
    @id = params[:id]
    @result = AnecdoteChapitre.where(chapitre_id: params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anecdote_chapitre }
    end
  end

  # GET /anecdote_chapitres/new
  # GET /anecdote_chapitres/new.json
  def new
    @anecdote_chapitre = AnecdoteChapitre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anecdote_chapitre }
    end
  end

  # GET /anecdote_chapitres/1/edit
  def edit
    @anecdote_chapitre = AnecdoteChapitre.new
    @id = params[:id]
    @result = AnecdoteChapitre.where(chapitre_id: params[:id])
  end

  # POST /anecdote_chapitres
  # POST /anecdote_chapitres.json
  def create
    @anecdote_chapitre = AnecdoteChapitre.new(params[:anecdote_chapitre])

    respond_to do |format|
      if @anecdote_chapitre.save
        format.html { redirect_to anecdote_chapitres_path(@anecdote_chapitre.chapitre_id), notice: 'Anecdote chapitre was successfully created.' }
        format.json { render json: anecdote_chapitres_path(@anecdote_chapitre.chapitre_id), status: :created, location: @anecdote_chapitre }
      else
        format.html { redirect_to anecdote_chapitres_path(@anecdote_chapitre.chapitre_id), notice: 'Anecdote deja ajoute.' }
        format.json { render json: @anecdote_chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anecdote_chapitres/1
  # PUT /anecdote_chapitres/1.json
  def update
    @anecdote_chapitre = AnecdoteChapitre.find(params[:id])

    respond_to do |format|
      if @anecdote_chapitre.update_attributes(params[:anecdote_chapitre])
        format.html { redirect_to @anecdote_chapitre, notice: 'Anecdote chapitre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anecdote_chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anecdote_chapitres/1
  # DELETE /anecdote_chapitres/1.json
  def destroy
    @anecdote_chapitre = AnecdoteChapitre.find(params[:id])
    @anecdote_chapitre.destroy

    respond_to do |format|
      format.html { redirect_to anecdote_chapitres_url }
      format.json { head :no_content }
    end
  end
end
