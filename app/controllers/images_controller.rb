class ImagesController < ApplicationController
before_action :set_post, only: [:show]
  def create
    @image = Image.new(image_params)
    @post.images << @image
    if @image.save
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  def show
    @image = Image.find(params[:id])
    render json: @image, status: :ok

    # post = params[:id]
    # images = FiltrClient.user_timeline(user_name).map(&:text)
    # render json: { images: images }
  end

  def upvote
    @image = Image.find(params[:id])
    @image.votes.create
    #redirect_to(images_path)
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  def image_params
    params.require(:post).permit(:message)
  end
end
