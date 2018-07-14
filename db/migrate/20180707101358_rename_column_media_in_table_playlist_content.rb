class RenameColumnMediaInTablePlaylistContent < ActiveRecord::Migration
  def change
    rename_column :playlist_contents, :media, :content
  end
end
