class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.references :outlet
      t.string :code_display
      t.integer "mode", :default => 1
      t.datetime :started_at
      t.datetime :expired_at
      t.datetime :sync_at
      t.boolean :is_active

      t.timestamps
    end
  end
end
