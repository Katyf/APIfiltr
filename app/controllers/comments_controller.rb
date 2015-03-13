class CommentsController < ApplicationController

# before_filter :authenticate, only: [:create]

  def index
    if params[:post_id]
      @post = Post.find(params[:post_id])
      @comments = @post.comments
      render json: @comments, status: :ok
    else
      @comments = Comment.all
      render json: @comments, status: :ok
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @post.comments << @comment
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment, status: 200
  end


  private
  def comment_params
    params.require(:comment).permit(:body, :user)
  end
end
