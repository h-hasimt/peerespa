class User::Progress < ActiveRecord::Base
  enum status: { undone: 0, working: 1, done: 2 }
  has_many :actives
  belongs_to :user
end
