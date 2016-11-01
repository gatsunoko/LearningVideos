class RenameTitleColumnToVideoUsername < ActiveRecord::Migration[5.0]
  def change
  	rename_column :videos, :userid, :user_id
  end
end
