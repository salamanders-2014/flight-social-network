class Post < ActiveRecord::Base
  has_many :photos
  has_many :comments
  belongs_to :poster, class_name: 'User'

  validates :poster, presence: true
end
