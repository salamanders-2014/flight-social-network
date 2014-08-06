require 'rails_helper'

RSpec.describe User, :type => :model do

  context 'attributes and validations' do
    before do 
      @user1 = User.new(first_name: "Quy", last_name: "Tran", email: "quy@dbc.com")
      @user1.save
      @user2 = User.new(email: "quy2@dbc.com")
      @user2.save
      @user3 = User.new
      @user3.save
    end

    after do 
      @user1.destroy
      @user2.destroy
      @user3.destroy
    end

    # Testing create
    it "user id must not be nil" do
        expect(@user1.id).to be_an(Integer)
    end

    it 'should validates user first_name and last_name before creating' do 
      expect(@user2).to be_nil
    end

    it 'should validates user email before creating' do
      expect(@user3).to be_nil
    end


    # Testing attributes
    it "should have first name" do
        expect(@user1.first_name).to eq("Quy")
    end
    
    it "should have last name" do
        expect(@user1.last_name).to eq("Tran")
    end

    it "should have email" do
        expect(@user1.email).to eq("quy@dbc.com")
    end
  end

  context 'associations type' do 
    it 'should have many statuses' do 
      expect(User.reflect_on_association(:statuses).macro).to eq(:has_many)
    end

    it 'should have many comments' do 
      expect(User.reflect_on_association(:comments).macro).to eq(:has_many)
    end

    it 'should have many profile pictures' do 
      expect(User.reflect_on_association(:profile_pics).macro).to eq(:has_many)
    end

    it 'should have many posts' do 
      expect(User.reflect_on_association(:posts).macro).to eq(:has_many)
    end

    it 'should have many photos' do 
      expect(User.reflect_on_association(:photos).macro).to eq(:has_many)
    end

    it 'should have many user profile pics <joined table>' do 
      expect(User.reflect_on_association(:user_profile_pics).macro).to eq(:has_many)
    end
  end

  context 'actual associations modification' do 
    before do 
      @user = User.new(first_name: "Quy", last_name: "Tran", email: "quy@dbc.com")
      @user.save
    end

    after do
      @user.destroy
    end

    it 'can create a new status' do 
      @user.statuses.create(text: "I am happy")
      expect(@user.statuses.last.text).to eq("I am happy")
      expect(@user.statuses.last.user_id).to eq(@user.id)
    end

    it 'can create a new comment' do 
      @user.comments.create(text: "Nice job")
      expect(@user.comments.last.text).to eq("Nice job")
      expect(@user.comments.last.commenter_id).to eq(@user.id)
    end

    it 'can create a new profile pic' do 
      @user.profile_pics.create(description: "Sunset")
      expect(@user.profile_pics.last.description).to eq("Sunset")
    end

    it 'can create a new post' do 
      @user.posts.create
      expect(@user.posts.last.poster_id).to eq(@user.id)
    end

    it 'can upload a new photo' do 
      @user.photos.create(description: "Sunrise")
      expect(@user.photos.last.description).to eq("Sunrise")
    end
  end
    
end