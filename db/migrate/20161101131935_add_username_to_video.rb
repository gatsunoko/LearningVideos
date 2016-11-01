class AddUsernameToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :username, :string
  end
end
