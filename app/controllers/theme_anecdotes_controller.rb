class ThemeAnecdotesController < ApplicationController
  # GET /theme_anecdotes
  # GET /theme_anecdotes.json
  def index
    @theme_anecdotes = ThemeAnecdote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theme_anecdotes }
    end
  end

  # GET /theme_anecdotes/1
  # GET /theme_anecdotes/1.json
  def show
    @id = params[:id]
    @theme_anecdote = params[:id]
    @result = ThemeAnecdote.where(anecdote_id: params[:id])
    #@result = ThemeAnecdote.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @theme_anecdote }
    end
  end

  # GET /theme_anecdotes/new
  # GET /theme_anecdotes/new.json
  def new
    @theme_anecdote = ThemeAnecdote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @theme_anecdote }
    end
  end

  # GET /theme_anecdotes/1/edit
  def edit
    @theme_anecdote = ThemeAnecdote.new
    @id = params[:id]
    @result = ThemeAnecdote.where(anecdote_id: params[:id])
  end

  # POST /theme_anecdotes
  # POST /theme_anecdotes.json
  def create
    @theme_anecdote = ThemeAnecdote.new(params[:theme_anecdote])

    respond_to do |format|
      if @theme_anecdote.save
        format.html { redirect_to theme_anecdotes_path(@theme_anecdote.anecdote_id), notice: 'Theme anecdote was successfully created.'}
        format.json { render json: theme_anecdotes_path(@theme_anecdote.anecdote_id), status: :created, location: @theme_anecdote }
      else
        format.html {  redirect_to theme_anecdote_path(@theme_anecdote.anecdote_id) , notice: 'Theme deja ajoute.' }
        format.json { render json: @edit_theme_anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /theme_anecdotes/1
  # PUT /theme_anecdotes/1.json
  def update
    @theme_anecdote = ThemeAnecdote.find(params[:id])

    respond_to do |format|
      if @theme_anecdote.update_attributes(params[:theme_anecdote])
        format.html { redirect_to @theme_anecdote, notice: 'Theme anecdote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @theme_anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_anecdotes/1
  # DELETE /theme_anecdotes/1.json
  def destroy
    @theme_anecdote = ThemeAnecdote.find(params[:id])
    @theme_anecdote.destroy

    respond_to do |format|
      format.html { redirect_to theme_anecdotes_url }
      format.json { head :no_content }
    end
  end
end
