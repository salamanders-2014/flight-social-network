require 'rails_helper'

RSpec.describe Post, :type => :model do

  before do
    @user = User.create(first_name: "Si", last_name: "G", email: "s@gmail.com")
  end

  after do
    @user.destroy
  end

  reflect_on_all_associations(:has_many)

  describe 'validations' do

    it "should have many photos" do
      t = Post.reflect_on_association(:photos)
      t.macro.should == :has_many
    end

    it 'should have many photos' do
        photo = Photo.create(description: "fuck off everyone")
        expect(post.photo).to be_valid
    end

    it "should have many comments" do
      t = Post.reflect_on_association(:comments)
      t.macro.should == :has_many
    end

    it 'should have many comments' do
        comment = Comment.create(text: "ayy", commenter: 1)
        expect(post.comment).to be_valid
    end

    it 'should be valid with text' do
      post = Post.new(poster: 1)
      expect(post).to be_valid
    end

    it 'should be invalid without a poster' do
      post = Post.new
      expect(post).to be_invalid
    end
  end

  describe '#poster' do
    it 'should return the id of who posted it' do
      expect(@post.poster).to be_a Integer
    end
  end

end