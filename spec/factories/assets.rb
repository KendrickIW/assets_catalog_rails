FactoryGirl.define do
  factory :asset do
    title "MyString"
    description "MyText"
    thumbnail_url "MyString"
  end

  factory :invalid_asset, class: Asset do
    title nil
    description "Invalid Asset"
    thumbnail_url "invalud url"
  end
end
