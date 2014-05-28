class AnecdotesController < ApplicationController
  # GET /anecdotes
  # GET /anecdotes.json
  def index
    @anecdotes = Anecdote.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anecdotes }
    end
  end

  # GET /anecdotes/1
  # GET /anecdotes/1.json
  def show
    @anecdote = Anecdote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anecdote }
    end
  end

  # GET /anecdotes/new
  # GET /anecdotes/new.json
  def new
    @anecdote = Anecdote.new
    @themes = Theme.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anecdote }
    end
  end

  # GET /anecdotes/1/edit
  def edit
    @anecdote = Anecdote.find(params[:id])
    
  end

  # POST /anecdotes
  # POST /anecdotes.json
  def create
    @anecdote = Anecdote.new(params[:anecdote])

    respond_to do |format|
      if @anecdote.save
        format.html { redirect_to @anecdote, notice: 'Anecdote was successfully created.' }
        format.json { render json: @anecdote, status: :created, location: @anecdote }
      else
        format.html { render action: "new" }
        format.json { render json: @anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anecdotes/1
  # PUT /anecdotes/1.json
  def update
    @anecdote = Anecdote.find(params[:id])

    respond_to do |format|
      if @anecdote.update_attributes(params[:anecdote])
        format.html { redirect_to @anecdote, notice: 'Anecdote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anecdotes/1
  # DELETE /anecdotes/1.json
  def destroy
    @anecdote = Anecdote.find(params[:id])
    @anecdote.destroy

    respond_to do |format|
      format.html { redirect_to anecdotes_url }
      format.json { head :no_content }
    end
  end
end
