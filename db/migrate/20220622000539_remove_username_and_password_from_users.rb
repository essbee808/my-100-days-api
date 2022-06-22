class RemoveUsernameAndPasswordFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :password_digest
    remove_column :users, :username
  end
end
