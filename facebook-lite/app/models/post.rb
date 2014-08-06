class Post < ActiveRecord::Base
  belongs_to :poster, class_name: "User"
  has_many :post_photos
  has_many :photos, through: :post_photos
  has_many :updates
<<<<<<< HEAD
=======
  has_many :comment_posts
>>>>>>> b15861c1f884c660d256536ed13d835b2bab9d6f
  has_many :comments, through: :comment_posts
end
