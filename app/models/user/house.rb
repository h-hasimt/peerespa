class User::House < ActiveRecord::Base
  has_one :profile
end
