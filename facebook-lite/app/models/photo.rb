class Photo < ActiveRecord::Base
  belongs_to :poster, class_name: "User"
  has_many :posts, through: :post_photos, source: :post
  has_many :used_as_profile_pics, through: :user_profile_pics, source: :user
end
