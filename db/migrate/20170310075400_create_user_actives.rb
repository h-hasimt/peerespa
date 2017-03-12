class CreateUserActives < ActiveRecord::Migration
  def change
    create_table :user_actives do |t|
      t.date :date
      t.text :done
      t.text :undone
      t.text :cause
      t.text :solution
      t.text :nextstep
      t.text :detail
      t.integer :user_id
      t.integer :progress_id
      t.timestamps
    end
  end
end
