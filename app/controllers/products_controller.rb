class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :add_product]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all.where(category_id: params[:category_id])
  end
  
  def add_product
    if current_user

      @product = Product.all.find(params[:product_id])

      @cart_product = Cart.find_by(cod: @product.cod, person_id: current_user.id)

      respond_to do |format|
        if @cart_product
          format.js {
            @cart_product.quantity += 1
            @cart_product.save
          }
        else
          format.js {
            @new_cart_product = Cart.create(
            cod: @product.cod,
            name: @product.name,
            price: @product.price,
            quantity: 1,
            person_id: current_user.id)
    
            @new_cart_product.save
          }
        end
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:cod, :name, :price, :image, :category_id)
    end
end
