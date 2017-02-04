FactoryGirl.define do
  factory :user do
    email 'example@gmail.com'
    password 'example'

    after(:build)   { |u| u.skip_confirmation_notification! }
  end

  factory :confirmed_admin, class: User do
    email 'admin@gmail.com'
    password 'example'

    after(:build)   { |u| u.skip_confirmation_notification! }
    before(:create) { |u| u.confirm }
  end
end
