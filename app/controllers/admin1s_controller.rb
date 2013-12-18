class Admin1sController < ApplicationController
before_filter :authorise, :only => [ :edit, :destroy]
  # GET /admin1s
  # GET /admin1s.json
  def index
    @admin1s = Admin1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin1s }
    end
  end

  # GET /admin1s/1
  # GET /admin1s/1.json
  def show
    @admin1 = Admin1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin1 }
    end
  end

  # GET /admin1s/new
  # GET /admin1s/new.json
  def new
    @admin1 = Admin1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin1 }
    end
  end

  # GET /admin1s/1/edit
  def edit
    @admin1 = Admin1.find(params[:id])
  end

  # POST /admin1s
  # POST /admin1s.json
  def create
    @admin1 = Admin1.new(params[:admin1])

    respond_to do |format|
      if @admin1.save
        format.html { redirect_to @admin1, notice: 'Admin1 was successfully created.' }
        format.json { render json: @admin1, status: :created, location: @admin1 }
      else
        format.html { render action: "new" }
        format.json { render json: @admin1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin1s/1
  # PUT /admin1s/1.json
  def update
    @admin1 = Admin1.find(params[:id])

    respond_to do |format|
      if @admin1.update_attributes(params[:admin1])
        format.html { redirect_to @admin1, notice: 'Admin1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin1s/1
  # DELETE /admin1s/1.json
  def destroy
    @admin1 = Admin1.find(params[:id])
    @admin1.destroy

    respond_to do |format|
      format.html { redirect_to admin1s_url }
      format.json { head :no_content }
    end
  end
end
