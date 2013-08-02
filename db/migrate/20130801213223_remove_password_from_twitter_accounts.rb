class RemovePasswordFromTwitterAccounts < ActiveRecord::Migration
  def change
    remove_column :twitter_accounts, :password, :string
  end
end
