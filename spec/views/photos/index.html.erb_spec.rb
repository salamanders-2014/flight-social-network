require 'rails_helper'

RSpec.describe "photos/index", :type => :view do
  # before(:each) do
  #   assign(:photos, [
  #     Photo.create!(
  #       :description => "Description",
  #       :uploader_id => 1,
  #       :url => "Url"
  #     ),
  #     Photo.create!(
  #       :description => "Description",
  #       :uploader_id => 1,
  #       :url => "Url"
  #     )
  #   ])
  # end

  # it "renders a list of photos" do
  #   render
  #   assert_select "tr>td", :text => "Description".to_s, :count => 2
  #   assert_select "tr>td", :text => 1.to_s, :count => 2
  #   assert_select "tr>td", :text => "Url".to_s, :count => 2
  # end
end
