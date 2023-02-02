require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @user = User.new(name: 'Jack Sparrow', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'I\'m Captain Jack Sparrow!')
  end

  subject { Post.new(author: @user, title: 'The Black Pearl', text: 'What a ship, it was...') }
 
  before { subject.save }

  it 'should be a post instance' do
    expect(subject).to be_an_instance_of(Post)
  end

  # Tests for validations
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    if subject.title = nil
    expect(subject).to_not be_valid
    else subject.title = 'a' * 101
    expect(subject).to_not be_valid
    end
  end

  it 'is not valid without text' do
    if subject.text = nil
    expect(subject).to_not be_valid
    else subject.text = 'a' * 501
    expect(subject).to_not be_valid
    end
  end

  it 'is not valid without an author' do
    if subject.author = nil
    expect(subject).to_not be_valid
    else subject.author = 'a' * 51
    expect(subject).to_not be_valid
    end
  end

  # Tests for associations
  it 'should belong to an author' do
    t = Post.reflect_on_association(:author)
    expect(t.macro).to eq(:belongs_to)
  end
end
