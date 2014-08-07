class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
    end

  def edit
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy!
  end

end
