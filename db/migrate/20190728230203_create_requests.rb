class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :item, foreign_key: true
      t.references :order, foreign_key: true
      t.string :message
      t.integer :quantity

      t.timestamps
    end
  end
end
