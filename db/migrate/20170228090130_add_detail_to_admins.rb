class AddDetailToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :Fname, :string
    add_column :admins, :Lname, :string
    add_column :admins, :Fname_kana, :string
    add_column :admins, :Lname_kana, :string
    add_column :admins, :nickname, :string
    add_column :admins, :role, :integer
    add_column :admins, :sex, :integer
    add_column :admins, :age, :integer
    add_column :admins, :skype, :string
    add_column :admins, :profile, :text
  end
end
