class CheckoutController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user.id

    @total_price = Cart.total_price

    @cart = Cart.all.where(person_id: user)
  end

  def finish_order
    user = current_user.id

    @total_price = Cart.total_price

    @cart = Cart.where(person_id: user)

    # Will avaliate if exists 2 or more products in cart variable
    if @cart.respond_to?("each")
      @cart.each do |cart_product|

        # Try to find the cart product if already exists in order
        @product_order = Order.find_by(cod: cart_product.cod)

        if @product_order
          @product_order.quantity += 1
          @product_order.save
        else
          @product_order = Order.create(
            cod: cart_product.cod,
            name: cart_product.name,
            price: cart_product.price,
            quantity: cart_product.quantity,
            total: @total_price,
            person_id: user
            )

          @product_order.save
        end
      end

    else
      @product_order = Order.create(
        cod: cart.cod,
        name: cart.name,
        price: cart.price,
        quantity: cart.quantity,
        total: @total_price,
        person_id: user)
    end

    @cart.destroy_all

    redirect_to home_index_url
  end
end
