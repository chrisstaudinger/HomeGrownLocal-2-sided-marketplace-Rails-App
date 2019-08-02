class AddQuantityToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :quantity, :float
  end
end
