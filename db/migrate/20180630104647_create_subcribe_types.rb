class CreateSubcribeTypes < ActiveRecord::Migration
  def change
    create_table :subcribe_types do |t|
      t.string :type
      t.integer :storage_size
      t.timestamps
    end
  end
end
