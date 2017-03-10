class CreateUserSelfanalies < ActiveRecord::Migration
  def change
    create_table :user_selfanalies do |t|
      t.string  :strength1
      t.string  :strength2
      t.string  :strength3
      t.string  :strength4
      t.string  :strength5
      t.string  :demerit1
      t.string  :demerit2
      t.string  :demerit3
      t.string  :demerit4
      t.string  :demerit5
      t.string  :merit1
      t.string  :merit2
      t.string  :merit3
      t.string  :merit4
      t.string  :merit5
      t.integer :behave_type
      t.timestamps
    end
  end
end
