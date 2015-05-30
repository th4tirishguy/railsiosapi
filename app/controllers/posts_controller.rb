class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.image = params[:file]
    render json: @post
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.permit(:title, :file)
  end
end
