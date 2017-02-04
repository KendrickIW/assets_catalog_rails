require 'rails_helper'

RSpec.describe AssetTag, type: :model do
  subject { build(:asset_tag, tag: create(:tag), asset: create(:asset) ) }
  it { is_expected.to be_valid }
  it { is_expected.to respond_to :tag }
  it { is_expected.to respond_to :asset }

  it 'is not valid when tag is nil' do
    subject.tag = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid when asset is nil' do
    subject.asset =  nil
    expect(subject).to_not be_valid
  end
end
