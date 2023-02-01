class User < ApplicationRecord
  has_many :posts, dependent: :destroy, foreign_key: :author_id
  has_many :comments, dependent: :destroy, foreign_key: :author_id
  has_many :likes, dependent: :destroy, foreign_key: :author_id

  # A method that returns the 3 most recent posts for a given user.
  def recent_posts
    posts.order(created_at: :desc).limit(3).reverse
  end

  # A method that returns the 5 most recent comments for a given user.
  def recent_comments
    comments.order(created_at: :desc).limit(5).reverse
  end

  # A method that returns the 5 most recent likes for a given user.
  def recent_likes
    likes.order(created_at: :desc).limit(5).reverse
  end
end
