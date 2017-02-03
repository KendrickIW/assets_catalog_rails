FactoryGirl.define do
  factory :user do
    email 'example@gmail.com'
    password 'example'

    after(:build)   { |u| u.skip_confirmation_notification! }
  end
end
