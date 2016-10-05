class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]

  def index
    @users= User.all
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    user_id = params[:id]

    @user = User.find_by_id(user_id)
  end

  def update
    user_id = params[:id]

    @user = User.find_by_id(user_id)

    @user.update_attributes(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
