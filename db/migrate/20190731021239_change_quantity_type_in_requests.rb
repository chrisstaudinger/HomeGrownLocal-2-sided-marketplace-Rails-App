class ChangeQuantityTypeInRequests < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :quantity, :float
  end
end
