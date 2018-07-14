class AddColumIsDeletedToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlist_contents, :is_deleted, :boolean, default: false
    add_column :playlists, :is_deleted, :boolean, default: false
  end
end
