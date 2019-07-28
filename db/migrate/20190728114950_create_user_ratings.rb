class CreateUserRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ratings do |t|
      t.references :reviewee
      t.references :reviewer
      t.float :rating

      t.timestamps
    end
  end
end
