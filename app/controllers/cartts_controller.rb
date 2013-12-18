class CarttsController < ApplicationController
  # GET /cartts
  # GET /cartts.json
  def index
    @cartts = Cartt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cartts }
    end
  end

  # GET /cartts/1
  # GET /cartts/1.json
  def show
    @cartt = Cartt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cartt }
    end
  end

  # GET /cartts/new
  # GET /cartts/new.json
  def new
    @cartt = Cartt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cartt }
    end
  end

  # GET /cartts/1/edit
  def edit
    @cartt = Cartt.find(params[:id])
  end

  # POST /cartts
  # POST /cartts.json
  def create
    @cartt = Cartt.new(params[:cartt])

    respond_to do |format|
      if @cartt.save
        format.html { redirect_to @cartt, notice: 'Cartt was successfully created.' }
        format.json { render json: @cartt, status: :created, location: @cartt }
      else
        format.html { render action: "new" }
        format.json { render json: @cartt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cartts/1
  # PUT /cartts/1.json
  def update
    @cartt = Cartt.find(params[:id])

    respond_to do |format|
      if @cartt.update_attributes(params[:cartt])
        format.html { redirect_to @cartt, notice: 'Cartt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cartt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartts/1
  # DELETE /cartts/1.json
  def destroy
    @cartt = Cartt.find(params[:id])
    @cartt.destroy

    respond_to do |format|
      format.html { redirect_to cartts_url }
      format.json { head :no_content }
    end
  end
end
