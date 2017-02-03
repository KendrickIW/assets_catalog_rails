require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }

  it 'is valid' do
    is_expected.to be_valid
  end

  it 'responds to role id' do
    is_expected.to respond_to :role
  end

  describe "when email domain is gamil.com" do
    subject { FactoryGirl.create(:user, email: 'williams@gmail.com') }

    it 'saves the role as admin after confirmation' do
      subject.confirm
      subject.save
      expect(subject.role.name).to eq 'admin'
    end

    it 'does not set the role to admin if not confirmed' do
      expect(subject.confirmed?).to eq false
      expect(subject.role.name).to eq 'regular'
    end
  end
end
