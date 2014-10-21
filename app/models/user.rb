class User < ActiveRecord::Base
  has_secure_password

  has_many :todos

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  validates :name,
            :presence => true,
            :length => { :maximum => 60 }
  validates :username,
            :length => { :within => 6..25 },
            :uniqueness => true
  validates :email,
            :presence => true,
            :length => { :maximum => 100 },
            :format => EMAIL_REGEX,
            :confirmation => true
  validates :phone,
            :numericality => true
end
