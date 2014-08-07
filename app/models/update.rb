class Update < ActiveRecord::Base
  belongs_to :post

  validates_presence_of :text
end
