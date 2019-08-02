class AddRatingToItemReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :item_reviews, :rating, :float
  end
end
