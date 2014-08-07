require 'rails_helper'

RSpec.feature 'Home Page' do
	scenario 'user can request home page' do
		visit '/home/index'
		expect(page)
	end


end