require 'rails_helper'

RSpec.describe Comment do
	
	before do
		@user = build(:user)
		@post = build(:post)
		@comment = build(:comment)
	end

	describe '#commenter' do
		it 'should return the user who commented on the photo'
	end

	describe '#text' do
		it 'validates text can not be blank'
	end

	describe '#post' do
		it 'should return the post in a through relationship'
	end


end