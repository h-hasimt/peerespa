class CreateUserHouses < ActiveRecord::Migration
  def change
    create_table :user_houses do |t|
      t.string  :fplan
      t.integer :size
      t.timestamps
    end
  end
end
