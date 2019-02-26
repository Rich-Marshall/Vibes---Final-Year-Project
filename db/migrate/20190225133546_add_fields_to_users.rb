class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :tel, :int
    add_column :users, :location, :string
    add_column :users, :genre, :string
    add_column :users, :website, :string

  end
end

# :name, :username, :email, :password, :password_confirmation, :tel, :location, :genre, :website
