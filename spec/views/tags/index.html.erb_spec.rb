require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      FactoryGirl.create(:tag, title: "Tag"),
      FactoryGirl.create(:tag, title: "Tag")
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
  end
end
