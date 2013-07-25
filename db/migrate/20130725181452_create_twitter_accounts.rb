class CreateTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.string :username
      t.string :password
      t.integer :user_id

      t.timestamps
    end
  end
end
