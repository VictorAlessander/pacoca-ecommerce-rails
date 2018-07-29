class CheckoutController < ApplicationController
  #before_action :authenticate_user!

  def index
    user = current_user.id

    @total_price = Cart.total_price

    @cart = Cart.where(person_id: user)
  end

  def finish_order

    @total_price = Cart.total_price

    @cart = Cart.where(person_id: current_user.id)

    # Will avaliate if exists 2 or more products in cart variable
    if @cart.empty?
      respond_to do |format|
        format.html {
          redirect_to checkout_url,
          notice: 'You cannot finish your order without any product in cart'
        }
      end
    else
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
            person_id: current_user.id,
            identification: current_user.token
            )

          @product_order.save
        end
      end
      @cart.destroy_all

      current_user.regenerate_token

      redirect_to home_index_url
    end
  end
end
