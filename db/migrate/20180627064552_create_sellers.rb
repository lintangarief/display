class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.text :phone_number
      t.text :email
      t.text :password
      t.string :code_seller

      t.timestamps
    end
  end
end
