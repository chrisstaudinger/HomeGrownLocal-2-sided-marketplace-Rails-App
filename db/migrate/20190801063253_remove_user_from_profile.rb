class RemoveUserFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_reference :profiles, :user, foreign_key: true
  end
end
