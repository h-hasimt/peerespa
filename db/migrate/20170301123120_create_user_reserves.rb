class CreateUserReserves < ActiveRecord::Migration
  def change
    create_table :user_reserves do |t|
      t.datetime :datetime
      t.integer :counseling
      t.text :detail
      t.integer :user_id
      t.timestamps
    end
  end
end
