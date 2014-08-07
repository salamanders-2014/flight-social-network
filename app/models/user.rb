class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  has_secure_password
  
  has_many :statuses
  has_many :comments, foreign_key: "commenter_id"
  has_many :user_profile_pics
  has_many :profile_pics, through: :user_profile_pics, source: :photo
  has_many :posts, foreign_key: "poster_id"
  has_many :photos, through: :posts # has many photos (in all posts)
  has_many :uploaded_photos, class_name: "Photo", foreign_key: "uploader_id"
end
