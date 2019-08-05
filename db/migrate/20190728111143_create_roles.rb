class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :privilege
      t.text :description

      t.timestamps
    end
  end
end
