class User::Goal < ActiveRecord::Base
  has_one :profile
end
