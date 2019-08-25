class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.references :buyer
      t.references :seller

      t.timestamps
    end
  end
end
