class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to public_root_path
    end
    respond_to do |format|
     format.html
     format.js
    end
  end

  def destroy
  end

  def update
    User.find(params[:id]).update(user_params)
    redirect_to public_user_path(current_user)
  end

  def index
  end

  def confirm
  end

  def unsubscribe
    current_user.update(is_active: false)
    sign_out
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to public_root_path
  end

  def following
  end

  def followers
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:is_active,:introduction)
  end
end
