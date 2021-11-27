class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def my_page
    @user = current_user
  end

  def followings
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

  def edit
  end

  def update
    user = current_user
    if user.update(user_params)
      redirect_to my_page_path
    else
      render :edit
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :introduction, :image)
    end
end
