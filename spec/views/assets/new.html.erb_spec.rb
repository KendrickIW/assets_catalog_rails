require 'rails_helper'

RSpec.describe "assets/new", type: :view do
  before(:each) do
    assign(:asset, Asset.new(
      :title => "MyString",
      :description => "MyText",
      :thumbnail_url => "MyString"
    ))
  end

  it "renders new asset form" do
    render

    assert_select "form[action=?][method=?]", assets_path, "post" do

      assert_select "input#asset_title[name=?]", "asset[title]"

      assert_select "textarea#asset_description[name=?]", "asset[description]"

      assert_select "input#asset_thumbnail_url[name=?]", "asset[thumbnail_url]"
    end
  end
end
