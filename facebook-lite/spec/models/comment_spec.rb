require 'rails_helper'

RSpec.describe Comment do
	
	before do
		@user = User.new(first_name: "John", last_name: "Doe", email: "john@example.com")
		@post = Post.new()
		@comment = Comment.new(text: "Best Birthday Party Eva", commenter: @user, post: @post)
	end

	describe '#whatever' do
	end




end