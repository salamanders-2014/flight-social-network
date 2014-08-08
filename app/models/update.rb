class Update < ActiveRecord::Base
  belongs_to :post
  validates :text, presence: true
end
