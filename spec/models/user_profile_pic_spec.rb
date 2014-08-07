require 'rails_helper'

RSpec.describe UserProfilePic do

	describe 'associations' do
		it 'should belong to a user' do
			connection = UserProfilePic.reflect_on_association(:user)
			expect(connection.macro).to eq(:belongs_to)
		end

		it 'should belong to a photo' do
			connection = UserProfilePic.reflect_on_association(:photo)
			expect(connection.macro).to eq(:belongs_to)
		end
	end

	describe 'validations' do
		it 'should be valid with user_id and photo_id' do
			pic = UserProfilePic.new(user_id: 1, photo_id: 1)
			expect(pic).to be_valid
		end

		it 'should be invalid without text' do
			pic = UserProfilePic.new
			expect(pic).to be_invalid
		end
	end

	describe 'methods' do

		before do
			@user = User.create(first_name: "Joe", last_name: "Blo", email: "me@example.com")
			@photo = Photo.create(description: "New Pic!")
			@user_profile_pic = UserProfilePic.create(user: @user, photo: @photo)
		end

		after do
			@user_profile_pic.destroy
			@user.destroy
			@photo.destroy
		end

		context '#user' do
			it 'should return the profile picture\'s user' do
				expect(@user_profile_pic.user).to be_a User
				expect(@user_profile_pic.user).to eq(@user)
			end
		end

		context '#photo' do
			it "should return the profile picture\'s photo" do
				expect(@user_profile_pic.photo).to be_a Photo
				expect(@user_profile_pic.photo).to eq(@photo)
			end
		end

	end
end
