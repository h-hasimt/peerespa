class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum sex: { male: 0, female: 1 }
  enum role: { guest: 0, general: 1, special: 2 }

  belongs_to :admin
  has_many :reserves, class_name: "User::Reserve"
  has_one :profile, class_name: "User::Profile"

end
