require 'rails_helper'

describe Status do

  before do
    @user = User.create(first_name: "John", last_name: "Doe", email: "me@example.com", password: "12345")
    @status = Status.create(user: @user, text: "Happy Cake Day!")
  end

  it "knows its user" do
    expect(@status.user).to be_a User
  end

  it 'should be valid with text' do
    status = Status.new(text: "This should be valid", user_id: 1)
  end

  it 'should be an invalid status if the text field is blank' do
    new_status = Status.new
    expect(new_status).to be_invalid
  end

  it "should not be an empty string" do
    expect(@status).to be_valid
    expect(@status.text).not_to eq("")
  end

end
