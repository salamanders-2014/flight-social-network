class User < ActiveRecord::Base
  has_secure_password
  has_many :statuses
  has_many :comments, foreign_key: :commenter_id
  has_many :profile_pics, class_name: "UserProfilePic"
  has_many :posts, foreign_key: :poster_id
  has_many :photos
  has_many :user_profile_pics
  has_many :uploaded_photos, class_name: "Photo", foreign_key: :uploader_id

  validates :first_name, presence: true
  validates :last_name, presence: true
end
