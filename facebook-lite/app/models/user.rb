class User < ActiveRecord::Base
  # statuses
  has_many :statuses

  # comments
  has_many :comments, foreign_key: "commenter_id"

  # profile pics
  has_many :user_profile_pics
  has_many :profile_pics, through: :user_profile_pics, source: :photo

  # has many posts
  has_many :posts, foreign_key: "poster_id"

  # has many photos
  has_many :photos, through: :posts
end
