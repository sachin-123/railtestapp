class DemoappsController < ApplicationController
  # GET /demoapps
  # GET /demoapps.json
  def index
    @demoapps = Demoapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @demoapps }
    end
  end

  # GET /demoapps/1
  # GET /demoapps/1.json
  def show
    @demoapp = Demoapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @demoapp }
    end
  end

  # GET /demoapps/new
  # GET /demoapps/new.json
  def new
    @demoapp = Demoapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @demoapp }
    end
  end

  # GET /demoapps/1/edit
  def edit
    @demoapp = Demoapp.find(params[:id])
  end

  # POST /demoapps
  # POST /demoapps.json
  def create
    @demoapp = Demoapp.new(params[:demoapp])

    respond_to do |format|
      if @demoapp.save
        format.html { redirect_to @demoapp, notice: 'Demoapp was successfully created.' }
        format.json { render json: @demoapp, status: :created, location: @demoapp }
      else
        format.html { render action: "new" }
        format.json { render json: @demoapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /demoapps/1
  # PUT /demoapps/1.json
  def update
    @demoapp = Demoapp.find(params[:id])

    respond_to do |format|
      if @demoapp.update_attributes(params[:demoapp])
        format.html { redirect_to @demoapp, notice: 'Demoapp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @demoapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demoapps/1
  # DELETE /demoapps/1.json
  def destroy
    @demoapp = Demoapp.find(params[:id])
    @demoapp.destroy

    respond_to do |format|
      format.html { redirect_to demoapps_url }
      format.json { head :no_content }
    end
  end
end
