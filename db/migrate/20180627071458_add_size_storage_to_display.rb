class AddSizeStorageToDisplay < ActiveRecord::Migration
  def change
    add_column :displays, :storage_type, :integer, :default => 1
    add_column :displays, :storage, :integer, :default => 0
  end
end
