class CartsController < ApplicationController

  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @cart = Cart.all.where(person_id: current_user.id)
    @total_price = Cart.total_price
  end

  def add_product
    user = current_user.id

    @product = Product.all.find(params[:product_id])

    @cart_product = Cart.find_by(cod: @product.cod)

    if @cart_product
      @cart_product.quantity += 1
      @cart_product.save
    else
      @new_cart_product = Cart.create(
        cod: @product.cod,
        name: @product.name,
        price: @product.price,
        quantity: 1,
        person_id: user)

      @new_cart_product.save
    end

    redirect_to action: :index
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    if @cart
      @cart.destroy
      redirect_to action: :index
    else
      redirect_to action: :index
    end
  end

  private

    def set_cart
      @cart = Cart.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:cod, :name, :price, :quantity, :person_id)
    end
end
