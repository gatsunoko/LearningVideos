class RemoveUsernameToVideo < ActiveRecord::Migration[5.0]
  def change
    remove_column :videos, :username, :string
  end
end
