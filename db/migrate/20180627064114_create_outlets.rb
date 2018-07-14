class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.references :business
      t.string :name
      t.text :address
      t.text :city
      t.text :state
      t.string :zip
      t.text :phone_number

      t.timestamps
    end
  end
end
