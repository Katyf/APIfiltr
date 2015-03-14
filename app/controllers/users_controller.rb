class UsersController < ApplicationController

  before_filter :authenticate, only: [:index]


  def sign_in
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      #this authenticate come from the model
      render json: { token: user.token }
    else
      head :unauthorized
    end
  end

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: {token: @user.token}
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end

  def new
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
  end


  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :token)
  end
end

