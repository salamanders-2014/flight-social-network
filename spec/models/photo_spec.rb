require 'rails_helper'

RSpec.describe Photo, :type => :model do
	
	before do
		@user = User.create(first_name: "Bob", last_name: "Doyle", email: "impact@example.com")
		@post = Post.create(poster: @user)
		@photo = Photo.create(poster: @user, description: "LOL Cat", posts: @post, url: "http://www.example.com/picture.png")
	end

	after do
		@photo.destroy
		@post.destroy
		@user.destroy
	end

	describe 'attributes' do
		it 'should have a description' do
			expect(@photo.description).to be_a String
			expect(@photo.description).to eq("LOL Cat")
		end

		it 'should have a url' do
			expect(@photo.url).to eq("http://www.example.com/picture.png")
		end
	end

	describe 'associations' do
		context '#uploader' do
			it 'belongs to an uploader' do
				expect(@photo.uploader).to be_a User
				expect(@photo.uploader).to eq(@user)
			end
		end

		context '#posts' do
			it 'has many posts' do
				expect(@photo.posts.empty?).to be_false
				expect(@photo.posts.length).to eq(1)
			end
		end
	end

	describe 'validations' do
		it 'should have a valid url' do
			expect(@photo.url).to be_valid
		end
	end

end