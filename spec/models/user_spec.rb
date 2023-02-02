require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Jack Sparrow', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'You will always remember this as the day that you almost caught Captain Jack Sparrow!') }

  before { subject.save }

  it 'should be a user instance' do
    expect(subject).to be_an_instance_of(User)
  end

  # Tests for validations
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a proper-length name' do
    if subject.name = nil
    expect(subject).to_not be_valid
    elsif subject.name = 'a'
    expect(subject).to_not be_valid
    else subject.name = 'a' * 51
    expect(subject).to_not be_valid
    end
  end

  it 'is not valid without a proper-length bio' do
    if subject.bio = nil
    expect(subject).to_not be_valid
    elsif subject.bio = 'a'
    expect(subject).to_not be_valid
    else subject.bio = 'a' * 501
    expect(subject).to_not be_valid
    end
  end

  it 'is not valid without a photo' do
    subject.photo = nil
    expect(subject).to_not be_valid
  end
end
