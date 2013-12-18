class Match1sController < ApplicationController
  # GET /match1s
  # GET /match1s.json
  before_filter :authorise, :only => [:new ,  :edit, :destroy]
  def index
    @match1s = Match1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @match1s }
    end
  end

  # GET /match1s/1
  # GET /match1s/1.json
  def show
    @match1 = Match1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @match1 }
    end
  end

  # GET /match1s/new
  # GET /match1s/new.json
  def new
    @match1 = Match1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @match1 }
    end
  end

  # GET /match1s/1/edit
  def edit
    @match1 = Match1.find(params[:id])
  end

  # POST /match1s
  # POST /match1s.json
  def create
    @match1 = Match1.new(params[:match1])

    respond_to do |format|
      if @match1.save
        format.html { redirect_to @match1, notice: 'Match1 was successfully created.' }
        format.json { render json: @match1, status: :created, location: @match1 }
      else
        format.html { render action: "new" }
        format.json { render json: @match1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /match1s/1
  # PUT /match1s/1.json
  def update
    @match1 = Match1.find(params[:id])

    respond_to do |format|
      if @match1.update_attributes(params[:match1])
        format.html { redirect_to @match1, notice: 'Match1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @match1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match1s/1
  # DELETE /match1s/1.json
  def destroy
    @match1 = Match1.find(params[:id])
    @match1.destroy

    respond_to do |format|
      format.html { redirect_to match1s_url }
      format.json { head :no_content }
    end
  end
end
