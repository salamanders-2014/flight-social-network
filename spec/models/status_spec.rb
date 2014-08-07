require 'rails_helper'

describe Status do
  let(:user){User.create}
  let(:status){Status.create(user_id: user.id, text: "Happy Cake Day!")}
  it "knows its user" do
    expect(status.user).to eq user
  end

  it 'should be valid with text' do
    status = Status.new(text: "This should be valid", user_id: 1)
  end

  it 'should be an invalid status if the text field is blank' do
    new_status = Status.new
    expect(new_status).to be_invalid
  end

  it "should not be an empty string" do
    expect(status.text).not_to eq("")
  end

end
