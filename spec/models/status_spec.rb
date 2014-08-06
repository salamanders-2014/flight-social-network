require 'rails_helper'

describe Status do
  let(:user){User.create}
  let(:status){Status.create(user_id: user.id, text: "Happy Cake Day!")}
  it "knows its user" do
    expect(status.user).to eq user
  end

  it "should not be an empty string" do
    expect(status.text).not_to eq("")
  end
end