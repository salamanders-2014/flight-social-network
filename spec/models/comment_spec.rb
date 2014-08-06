require 'rails_helper'

RSpec.describe Comment do
	
	before do
		@user_1 = User.create(first_name: "John", last_name: "Doe", email: "me@example.com")
		@user_2 = User.create(first_name: "Kate", last_name: "Winslet", email: "you@example.com")
		@post = Post.create(poster: @user_1)
		@comment = Comment.create(commenter: @user_2, post: @post, text: "Happy Birthday Simon")
	end

	after do
		@comment.destroy
		@post.destroy
		@user_1.destroy
		@user_2.destroy
	end

	describe 'attributes' do
		context '#text' do
			it 'returns the comment\'s text' do
				expect(@comment.text).to eq("Happy Birthday Simon")
			end
		end
	end

	describe 'validations' do
		it 'validates text can not be blank' do
			comment = Comment.create(text: "")
			expect(comment).to be_invalid
		end
	end

	describe '#commenter' do
		it 'should return the user who commented on the post' do
			expect(@comment.commenter).to be_a User
			expect(@comment.commenter).to eq(@user_2)
		end
	end

	describe '#post' do
		it 'should return the post' do
			expect(@comment.post).to be_a Post
			expect(@comment.post).to eq(@post)
		end
	end

end