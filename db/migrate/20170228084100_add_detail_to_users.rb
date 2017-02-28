class AddDetailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Fname, :string
    add_column :users, :Lname, :string
    add_column :users, :Fname_kana, :string
    add_column :users, :Lname_kana, :string
    add_column :users, :nickname, :string
    add_column :users, :role, :integer
    add_column :users, :sex, :integer
    add_column :users, :age, :integer
    add_column :users, :skype, :string
    add_column :users, :admin_id, :integer
  end
end
