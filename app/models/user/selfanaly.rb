class User::Selfanaly < ActiveRecord::Base
  enum behave_type: { output: 0, input: 1, stock: 2 }

  has_one :profile
end
