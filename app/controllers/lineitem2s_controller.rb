class Lineitem2sController < ApplicationController
  # GET /lineitem2s
  # GET /lineitem2s.json
  def index
    @lineitem2s = Lineitem2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lineitem2s }
    end
  end

  # GET /lineitem2s/1
  # GET /lineitem2s/1.json
  def show
    @lineitem2 = Lineitem2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lineitem2 }
    end
  end

  # GET /lineitem2s/new
  # GET /lineitem2s/new.json
  def new
    @lineitem2 = Lineitem2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lineitem2 }
    end
  end

  # GET /lineitem2s/1/edit
  def edit
    @lineitem2 = Lineitem2.find(params[:id])
  end

  # POST /lineitem2s
  # POST /lineitem2s.json
   
 def create
     @cart = current_cart
     store = Store.find(params[:store_id])
	 if store
     @lineitem2 = @cart.add_store(store.id)
	 end

      respond_to do |format|
      if @lineitem2.save
        format.html { redirect_to store_url, notice: 'Line item was successfully created.' }
		format.js    { @current_item = @lineitem2 }
        format.json { render json: @lineitem2, status: :created, location: @lineitem2 }
        else
            format.html { render action: "new" }
            format.json { render json: @lineitem2.errors, status: :unprocessable_entity }
       end
   end
end


  # PUT /lineitem2s/1
  # PUT /lineitem2s/1.json
  def update
    @lineitem2 = Lineitem2.find(params[:id])

    respond_to do |format|
      if @lineitem2.update_attributes(params[:lineitem2])
        format.html { redirect_to @lineitem2, notice: 'Lineitem2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lineitem2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineitem2s/1
  # DELETE /lineitem2s/1.json
  def destroy
    @lineitem2 = Lineitem2.find(params[:id])
    @lineitem2.destroy

    respond_to do |format|
      format.html { redirect_to lineitem2s_url }
      format.json { head :no_content }
    end
  end
end
