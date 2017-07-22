class CheckoutController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user.id

    @total_price = Cart.total_price

    @cart = Cart.all.where(person_id: user)
  end

  def finish_order
    #user = current_user.id

    #@total_price = Cart.total_price

    #@cart_products = Cart.all.where(person_id: user)

    #if @cart.respond_to?("each")
      #@cart.each do |product|
  end
end
