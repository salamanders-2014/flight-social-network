class Post < ActiveRecord::Base
  belongs_to :poster, class_name: "User"
  has_many :post_photos
  has_many :photos, through: :post_photos
  has_many :updates
  has_many :comments
end
