class PostsController < ApplicationController

  def index
    @posts = Post.all

    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end

end
