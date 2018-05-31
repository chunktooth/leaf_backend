class UsersController < ApplicationController
  before_action :set_user, only: [:show, :create, :destroy]

  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    @user = User.find(params[:id])
    json_response(@user)    
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end