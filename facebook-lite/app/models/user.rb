class User < ActiveRecord::Base
  has_many :statuses
  has_many :comments, foreign_key: "commenter_id"
  has_many :user_profile_pics
  has_many :profile_pics, through: :user_profile_pics, source: :photo

  # has many posts
  has_many :posts, foreign_key: "poster_id"

  # has many photos

  has_many :post_photos, through: :posts
  has_many :photos, through: :post_photos, source: :photo  
end
