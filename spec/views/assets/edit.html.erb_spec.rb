require 'rails_helper'

RSpec.describe "assets/edit", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      :title => "MyString",
      :description => "MyText",
      :thumbnail_url => "MyString"
    ))
  end

  it "renders the edit asset form" do
    render

    assert_select "form[action=?][method=?]", asset_path(@asset), "post" do

      assert_select "input#asset_title[name=?]", "asset[title]"

      assert_select "textarea#asset_description[name=?]", "asset[description]"

      assert_select "input#asset_thumbnail_url[name=?]", "asset[thumbnail_url]"
    end
  end
end
