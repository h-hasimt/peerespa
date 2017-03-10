class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.integer :house_id
      t.integer :goal_id
      t.integer :selfanaly_id
      t.timestamps
    end
  end
end
