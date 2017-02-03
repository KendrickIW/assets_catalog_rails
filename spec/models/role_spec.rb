require 'rails_helper'

RSpec.describe Role, type: :model do
  it 'is invalid when name is not present' do
    is_expected.to_not be_valid
  end

  it 'is invalid when name is not a valid option' do
    subject.name = "not a valid admin"
    is_expected.to_not be_valid
  end

  it 'is valid when name is admin' do
    subject.name = "admin"
    is_expected.to be_valid
  end

  it 'is valid when name is regular' do
    subject.name = "regular"
    is_expected.to be_valid
  end

  it 'is has many users' do
    is_expected.to respond_to :users
  end
end
