class Admin::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    if user.is_active == true
      user.update(is_active: false)
    else
      user.update(is_active: true)
    end
    redirect_to admin_user_path(user), notice: "会員ステータスを更新しました"
  end

  def destroy
  end

end
