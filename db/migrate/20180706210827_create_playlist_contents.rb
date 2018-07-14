class CreatePlaylistContents < ActiveRecord::Migration
  def change
    create_table :playlist_contents do |t|
      t.integer :playlist_id
      t.string :media
      t.integer :col
      t.integer :row
      t.timestamps
    end
  end
end
