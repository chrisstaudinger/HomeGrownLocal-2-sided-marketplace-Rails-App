class CreateItemReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :item_reviews do |t|
      t.references :item, foreign_key: true
      t.references :reviewer
      t.string :message

      t.timestamps
    end
  end
end
