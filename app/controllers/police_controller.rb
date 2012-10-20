class PoliceController < ApplicationController
  # GET /police
  # GET /police.json
  def index
    @police = Polouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @police }
    end
  end

  # GET /police/1
  # GET /police/1.json
  def show
    @polouse = Polouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @polouse }
    end
  end

  # GET /police/new
  # GET /police/new.json
  def new
    @polouse = Polouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @polouse }
    end
  end

  # GET /police/1/edit
  def edit
    @polouse = Polouse.find(params[:id])
  end

  # POST /police
  # POST /police.json
  def create
    @polouse = Polouse.new(params[:polouse])

    respond_to do |format|
      if @polouse.save
        format.html { redirect_to @polouse, notice: 'Polouse was successfully created.' }
        format.json { render json: @polouse, status: :created, location: @polouse }
      else
        format.html { render action: "new" }
        format.json { render json: @polouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /police/1
  # PUT /police/1.json
  def update
    @polouse = Polouse.find(params[:id])

    respond_to do |format|
      if @polouse.update_attributes(params[:polouse])
        format.html { redirect_to @polouse, notice: 'Polouse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @polouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police/1
  # DELETE /police/1.json
  def destroy
    @polouse = Polouse.find(params[:id])
    @polouse.destroy

    respond_to do |format|
      format.html { redirect_to police_url }
      format.json { head :no_content }
    end
  end
end
