class AddUserNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, index: true, unique: true
    add_column :users, :first_name, :string, index: true
    add_column :users, :last_name, :string, index: true
  end
end
