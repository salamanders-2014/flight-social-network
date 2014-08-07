class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
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
