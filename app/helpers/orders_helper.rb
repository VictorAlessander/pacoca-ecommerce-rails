module OrdersHelper

  def orders_from_user
    Order.all.where(person_id: current_user.id)
  end
end
