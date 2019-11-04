class User < ActiveRecord::Base
  has_many :aquariums
  has_secure_password 

end