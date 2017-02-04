require 'rails_helper'

RSpec.describe Asset, type: :model do
  subject { build(:asset) }

  it { is_expected.to be_valid }

  it 'validates the presence of titel' do
    subject.title = nil
    expect(subject).to_not be_valid  
  end
end
