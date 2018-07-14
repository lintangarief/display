class AddColumnToTablePlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :business_id, :integer
    add_column :playlists, :column_type, :integer
  end
end
