class RemoveLocationFromUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove_references :location
    end
  end
end
