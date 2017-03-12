class CreateUserProgresses < ActiveRecord::Migration
  def change
    create_table :user_progresses do |t|
      t.string :name
      t.integer :status
      t.text :goal
      t.integer :percent
      t.boolean :is_main, default: false
      t.integer :user_id
      t.timestamps
    end
  end
end
