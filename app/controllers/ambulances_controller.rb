class AmbulancesController < ApplicationController
  # GET /ambulances
  # GET /ambulances.json
  def index
    @ambulances = Ambulance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ambulances }
    end
  end

  # GET /ambulances/1
  # GET /ambulances/1.json
  def show
    @ambulance = Ambulance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ambulance }
    end
  end

  # GET /ambulances/new
  # GET /ambulances/new.json
  def new
    @ambulance = Ambulance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ambulance }
    end
  end

  # GET /ambulances/1/edit
  def edit
    @ambulance = Ambulance.find(params[:id])
  end

  # POST /ambulances
  # POST /ambulances.json
  def create
    @ambulance = Ambulance.new(params[:ambulance])

    respond_to do |format|
      if @ambulance.save
        format.html { redirect_to @ambulance, notice: 'Ambulance was successfully created.' }
        format.json { render json: @ambulance, status: :created, location: @ambulance }
      else
        format.html { render action: "new" }
        format.json { render json: @ambulance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ambulances/1
  # PUT /ambulances/1.json
  def update
    @ambulance = Ambulance.find(params[:id])

    respond_to do |format|
      if @ambulance.update_attributes(params[:ambulance])
        format.html { redirect_to @ambulance, notice: 'Ambulance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ambulance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambulances/1
  # DELETE /ambulances/1.json
  def destroy
    @ambulance = Ambulance.find(params[:id])
    @ambulance.destroy

    respond_to do |format|
      format.html { redirect_to ambulances_url }
      format.json { head :no_content }
    end
  end
end
