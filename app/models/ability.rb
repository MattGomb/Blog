class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can(%i[read destroy], Post, author: user)
    can(%i[read destroy], Comment, author: user)

    return unless user.role == 'admin'

    can :destroy, Post
    can :destroy, Comment
  end
end
