class Photo < ActiveRecord::Base
	has_and_belongs_to_many :posts
	belongs_to :uploader, class_name: "User", foreign_key: :user_id
	belongs_to :poster
	validates :description, :url, presence: true
end
