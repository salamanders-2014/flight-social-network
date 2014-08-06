require 'rails_helper'

RSpec.describe Update, :type => :model do
	
	before do
		@post = Post.create
		@update = Update.create(text: "Cool bike, man", post: @post)
	end

	after do
		@update.destroy
		@post.destroy
	end

	describe 'validations' do
		it 'should be valid with text' do
			update = Update.new(text: "This should be valid")
			expect(update).to be_valid
		end

		it 'should be invalid without text' do
			update = Update.new(text: "")
			expect(update).to be_invalid
		end
	end

	describe '#text' do
		it 'should return the text' do
			expect(@update.text).to be_a String
			expect(@update.text).to eq("Cool bike, man")
		end
	end

	describe '#post' do
		it 'should return the post the update came from' do
			expect(@update.post).to eq(@post)
		end
	end

end