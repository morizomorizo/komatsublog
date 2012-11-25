class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name
  attr_accessible :password
  attr_accessible :password_confirmation
  has_secure_password
end

