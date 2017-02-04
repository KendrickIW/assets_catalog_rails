require 'rails_helper'

RSpec.describe Tag, type: :model do
  subject { build(:tag) }

  it { is_expected.to be_valid }
  it { is_expected.to respond_to :assets }

  it 'is not valid when title is not present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end
