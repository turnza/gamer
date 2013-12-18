class Table1sController < ApplicationController
  # GET /table1s
  # GET /table1s.json
   before_filter :authorise, :only => [:new ,  :edit, :destroy]
  def index
    @table1s = Table1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @table1s }
    end
  end

  # GET /table1s/1
  # GET /table1s/1.json
  def show
    @table1 = Table1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @table1 }
    end
  end

  # GET /table1s/new
  # GET /table1s/new.json
  def new
    @table1 = Table1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @table1 }
    end
  end

  # GET /table1s/1/edit
  def edit
    @table1 = Table1.find(params[:id])
  end

  # POST /table1s
  # POST /table1s.json
  def create
    @table1 = Table1.new(params[:table1])

    respond_to do |format|
      if @table1.save
        format.html { redirect_to @table1, notice: 'Table1 was successfully created.' }
        format.json { render json: @table1, status: :created, location: @table1 }
      else
        format.html { render action: "new" }
        format.json { render json: @table1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /table1s/1
  # PUT /table1s/1.json
  def update
    @table1 = Table1.find(params[:id])

    respond_to do |format|
      if @table1.update_attributes(params[:table1])
        format.html { redirect_to @table1, notice: 'Table1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @table1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table1s/1
  # DELETE /table1s/1.json
  def destroy
    @table1 = Table1.find(params[:id])
    @table1.destroy

    respond_to do |format|
      format.html { redirect_to table1s_url }
      format.json { head :no_content }
    end
  end
end
