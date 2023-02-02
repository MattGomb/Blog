require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @user = User.new(name: 'Jack Sparrow', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'I\'m Captain Jack Sparrow!', posts_counter: 0)
  end

  subject { Post.new(author: @user, title: 'The Black Pearl', text: 'What a ship, it was...', comments_counter: 0, likes_counter: 0) }
 
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
    else subject.title = 'a' * 251
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
    else subject.author = @user
    expect(subject).to be_valid
    end
  end

  it 'must have a likes_counter' do
    subject.likes_counter = nil
    expect(subject).to_not be_valid
  end

  it 'must have a comments_counter' do
    subject.comments_counter = nil
    expect(subject).to_not be_valid
  end

  # Tests for associations
  describe 'the associations of a post' do
    it 'should belong to an author' do
      post = Post.reflect_on_association(:author)
      expect(post.macro).to eq(:belongs_to)
    end

    it 'should possibly have many comments' do
      post = Post.reflect_on_association(:comments)
      expect(post.macro).to eq(:has_many)
    end

    it 'should possibly have many likes' do
      post = Post.reflect_on_association(:likes)
      expect(post.macro).to eq(:has_many)
    end
  end
end
