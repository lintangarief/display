class AddColumnCodeToDisplay < ActiveRecord::Migration
  def change
    add_column :displays, :code, :integer, :default => 0
  end
end
