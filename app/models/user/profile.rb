class User::Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :house
  belongs_to :goal
  belongs_to :selfanaly
end
