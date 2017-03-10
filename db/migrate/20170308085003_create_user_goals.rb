class CreateUserGoals < ActiveRecord::Migration
  def change
    create_table :user_goals do |t|
      t.text    :room_cmt
      t.text    :self_cmt
      t.text    :period_cmt
      t.text   :room_url
      t.timestamps
    end
  end
end
