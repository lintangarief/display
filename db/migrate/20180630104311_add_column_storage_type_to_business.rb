class AddColumnStorageTypeToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :subcribe_type_id, :integer
  end
end
