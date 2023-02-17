class Api::V1::PostsController < ApiController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.order(created_at: :desc)

    render json: @posts
  end
end
