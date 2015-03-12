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



  private
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end

