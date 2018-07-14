class AddConfirmableToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :confirmation_token, :string
    add_column :businesses, :confirmed_at, :datetime
    add_column :businesses, :confirmation_sent_at, :datetime
    add_column :businesses, :unconfirmed_email, :string
  end
end
