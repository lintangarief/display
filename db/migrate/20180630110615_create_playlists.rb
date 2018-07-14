class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :playlist_type
      t.string :type
      t.integer :transition
      t.text :text_information
      t.string :backgroud_text
      t.string :color_text
      t.integer :speed
      t.timestamps
    end
  end
end
