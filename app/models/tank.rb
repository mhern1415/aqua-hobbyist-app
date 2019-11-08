class Tank < ActiveRecord::Base
  validates :title, :size, :flora, :image_url, presence: true

  belongs_to :user
end
