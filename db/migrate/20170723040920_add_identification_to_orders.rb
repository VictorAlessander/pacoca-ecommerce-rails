class AddIdentificationToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :identification, :string
  end
end
