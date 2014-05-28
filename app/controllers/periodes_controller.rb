class PeriodesController < ApplicationController
  # GET /periodes
  # GET /periodes.json
  def index
    @periodes = Periode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @periodes }
    end
  end

  # GET /periodes/1
  # GET /periodes/1.json
  def show
    @periode = Periode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @periode }
    end
  end

  # GET /periodes/new
  # GET /periodes/new.json
  def new
    @periode = Periode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @periode }
    end
  end

  # GET /periodes/1/edit
  def edit
    @periode = Periode.find(params[:id])
  end

  # POST /periodes
  # POST /periodes.json
  def create
    @periode = Periode.new(params[:periode])

    respond_to do |format|
      if @periode.save
        format.html { redirect_to @periode, notice: 'Periode was successfully created.' }
        format.json { render json: @periode, status: :created, location: @periode }
      else
        format.html { render action: "new" }
        format.json { render json: @periode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /periodes/1
  # PUT /periodes/1.json
  def update
    @periode = Periode.find(params[:id])

    respond_to do |format|
      if @periode.update_attributes(params[:periode])
        format.html { redirect_to @periode, notice: 'Periode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @periode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodes/1
  # DELETE /periodes/1.json
  def destroy
    @periode = Periode.find(params[:id])
    @periode.destroy

    respond_to do |format|
      format.html { redirect_to periodes_url }
      format.json { head :no_content }
    end
  end
end
