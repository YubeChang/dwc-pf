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
  end
end
