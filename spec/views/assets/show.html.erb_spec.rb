require 'rails_helper'

RSpec.describe "assets/show", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      :title => "Title",
      :description => "MyText",
      :thumbnail_url => "Thumbnail Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Thumbnail Url/)
  end
end
