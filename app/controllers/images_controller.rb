class ImagesController < ApplicationController
before_action :set_post, only: [:show, :create]

  def index
    @images = Image.all
    render json: @images, status: 200
  end

  def create
    @image = Image.new(image_params)
    @post.images << @image
    if @image.save
      render json: @image, status: :created
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  def show
    @image = Image.find(params[:id])
    render json: @image, status: :ok
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
    params.require(:image).permit(:url, :post_id)
  end
end
