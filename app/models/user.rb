class User < ActiveRecord::Base
  has_secure_password
  has_many :statuses
  has_many :comments
  has_many :profile_pics
  has_many :posts
  has_many :photos
  has_many :user_profile_pics

  validates :first_name, presence: true
  validates :last_name, presence: true
end
