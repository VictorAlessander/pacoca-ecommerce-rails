module OrdersHelper

  def orders_from_user
    Order.group(:identification).where(person_id: current_user.id)
  end
end
