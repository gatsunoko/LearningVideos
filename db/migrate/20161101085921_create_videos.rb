class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :videourl
      t.text :text

      t.timestamps
    end
  end
end
