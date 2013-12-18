class Result1sController < ApplicationController
  # GET /result1s
  # GET /result1s.json
  before_filter :authorise, :only => [:new ,  :edit, :destroy]
  
  def index
    @result1s = Result1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @result1s }
    end
  end

  # GET /result1s/1
  # GET /result1s/1.json
  def show
    @result1 = Result1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @result1 }
    end
  end

  # GET /result1s/new
  # GET /result1s/new.json
  def new
    @result1 = Result1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @result1 }
    end
  end

  # GET /result1s/1/edit
  def edit
    @result1 = Result1.find(params[:id])
  end

  # POST /result1s
  # POST /result1s.json
  def create
    @result1 = Result1.new(params[:result1])

    respond_to do |format|
      if @result1.save
        format.html { redirect_to @result1, notice: 'Result1 was successfully created.' }
        format.json { render json: @result1, status: :created, location: @result1 }
      else
        format.html { render action: "new" }
        format.json { render json: @result1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /result1s/1
  # PUT /result1s/1.json
  def update
    @result1 = Result1.find(params[:id])

    respond_to do |format|
      if @result1.update_attributes(params[:result1])
        format.html { redirect_to @result1, notice: 'Result1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @result1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /result1s/1
  # DELETE /result1s/1.json
  def destroy
    @result1 = Result1.find(params[:id])
    @result1.destroy

    respond_to do |format|
      format.html { redirect_to result1s_url }
      format.json { head :no_content }
    end
  end
end
