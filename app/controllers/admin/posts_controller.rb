class Admin::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
    post = Post.find(params[:id])
    if post.is_delete == true
      post.update(is_delete: false)
    else
      post.update(is_delete: true)
    end
    redirect_to admin_user_path(post.user)
  end
end
