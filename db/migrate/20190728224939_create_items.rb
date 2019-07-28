class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :item_category, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
