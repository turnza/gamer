class Order1sController < ApplicationController
  # GET /order1s
  # GET /order1s.json
  def index
    @order1s = Order1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order1s }
    end
  end

  # GET /order1s/1
  # GET /order1s/1.json
  def show
    @order1 = Order1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order1 }
    end
  end

  # GET /order1s/new
  # GET /order1s/new.json
  def new
  
  @cart=current_cart
	if @cart.lineitem2s.empty?
		redirect_to store_url ,notice:"Your cart is empty"
		return
end
  else
    @order1 = Order1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order1 }
    end
  end

  # GET /order1s/1/edit
  def edit
    @order1 = Order1.find(params[:id])
  end

  # POST /order1s
  # POST /order1s.json
  def create
    @order1 = Order1.new(params[:order1])
	@order1.add_lineitem2s_from_cart(current_cart)
	@order1.member_id=@current_member.id
	
    respond_to do |format|
      if @order1.save
		
			Cart.destroy(session[:cart_id])
			session[:cart_id]=nil
			format.html { redirect_to store_url, notice: 'Thank you for your order' }
			format.json { render json: @order1, status: :created, location: @order }
      else
			@cart=current_cart
			format.html { render action: "new" }
			format.json { render json: @order1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order1s/1
  # PUT /order1s/1.json
  def update
    @order1 = Order1.find(params[:id])

    respond_to do |format|
      if @order1.update_attributes(params[:order1])
        format.html { redirect_to stores_path, notice: 'Order1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order1s/1
  # DELETE /order1s/1.json
  def destroy
    @order1 = Order1.find(params[:id])
    @order1.destroy

    respond_to do |format|
      format.html { redirect_to order1s_url }
      format.json { head :no_content }
    end
  end
end
