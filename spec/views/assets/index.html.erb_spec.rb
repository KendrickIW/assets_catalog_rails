require 'rails_helper'

RSpec.describe "assets/index", type: :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
        :title => "Title",
        :description => "MyText",
        :thumbnail_url => "Thumbnail Url"
      ),
      Asset.create!(
        :title => "Title",
        :description => "MyText",
        :thumbnail_url => "Thumbnail Url"
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Thumbnail Url".to_s, :count => 2
  end
end
