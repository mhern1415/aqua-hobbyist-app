class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :name, :email, :bio, :image_url, presence: true
  has_many :tanks
  has_secure_password 

end