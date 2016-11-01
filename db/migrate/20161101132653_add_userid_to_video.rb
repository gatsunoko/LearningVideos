class AddUseridToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :userid, :integer
  end
end
