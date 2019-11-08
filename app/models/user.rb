class User < ActiveRecord::Base
  validates :email, uniqueness: true
  has_many :tanks
  has_secure_password 

end