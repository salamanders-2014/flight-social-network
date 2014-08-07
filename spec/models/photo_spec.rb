require 'rails_helper'

RSpec.describe Photo, :type => :model do

	before do
		@user = User.create(first_name: "Bob", last_name: "Doyle", email: "impact@example.com", password: "12345")
		@post = Post.create(poster: @user)
		@photo = Photo.create(uploader: @user, description: "LOL Cat", posts: [@post], url: "http://www.example.com/picture.png")
	end

	describe 'attributes' do
		it 'should have a description' do
			expect(@photo.description).to be_a String
			expect(@photo.description).to eq("LOL Cat")
		end

		it 'should have a url' do
			expect(@photo.url).to_not be_nil
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
				expect(@photo.posts.empty?).to eq(false)
				expect(@photo.posts.length).to eq(1)
			end
		end
	end

end
