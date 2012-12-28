class Demo1sController < ApplicationController
  # GET /demo1s
  # GET /demo1s.json
  def index
    @demo1s = Demo1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @demo1s }
    end
  end

  # GET /demo1s/1
  # GET /demo1s/1.json
  def show
    @demo1 = Demo1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @demo1 }
    end
  end

  # GET /demo1s/new
  # GET /demo1s/new.json
  def new
    @demo1 = Demo1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @demo1 }
    end
  end

  # GET /demo1s/1/edit
  def edit
    @demo1 = Demo1.find(params[:id])
  end

  # POST /demo1s
  # POST /demo1s.json
  def create
    @demo1 = Demo1.new(params[:demo1])

    respond_to do |format|
      if @demo1.save
        format.html { redirect_to @demo1, notice: 'Demo1 was successfully created.' }
        format.json { render json: @demo1, status: :created, location: @demo1 }
      else
        format.html { render action: "new" }
        format.json { render json: @demo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /demo1s/1
  # PUT /demo1s/1.json
  def update
    @demo1 = Demo1.find(params[:id])

    respond_to do |format|
      if @demo1.update_attributes(params[:demo1])
        format.html { redirect_to @demo1, notice: 'Demo1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @demo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo1s/1
  # DELETE /demo1s/1.json
  def destroy
    @demo1 = Demo1.find(params[:id])
    @demo1.destroy

    respond_to do |format|
      format.html { redirect_to demo1s_url }
      format.json { head :no_content }
    end
  end
end
