class AddItemToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :item, foreign_key: true
  end
end
