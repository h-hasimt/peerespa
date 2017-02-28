class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum sex: { male: 0, female: 1 }
  enum role: {supecial: 1, general: 2}

  belongs_to :admin

end
