class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  validates :author, presence: true
  validates :post, presence: true
  validates :text, presence: true, length: { maximum: 150 }

  # A method that updates the comments counter for a post.
  def update_comments_counter
    post.increment!(:comments_counter)
  end

  after_save :update_comments_counter
end
