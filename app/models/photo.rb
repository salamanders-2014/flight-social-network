class Photo < ActiveRecord::Base
	has_many :posts
	belongs_to :uploader, class_name: "User"
	belongs_to :poster
	validates :description, :url, presence: true
end
