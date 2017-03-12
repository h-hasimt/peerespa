class User::Active < ActiveRecord::Base
  belongs_to :user
  belongs_to :progress
end
