class RenameColumnTypeInTablePlaylist < ActiveRecord::Migration
  def change
    rename_column :playlists, :type, :template
  end
end
