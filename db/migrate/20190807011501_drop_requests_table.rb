class DropRequestsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :requests
  end

  def down
  end
end
