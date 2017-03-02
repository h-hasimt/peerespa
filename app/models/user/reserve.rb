class User::Reserve < ActiveRecord::Base

  enum counseling: { pre: 0, chat: 1, video: 2 }

  belongs_to :user
end
