class User < ActiveRecord::Base
  has_many :tanks
  has_secure_password 

end