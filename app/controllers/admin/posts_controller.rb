class Admin::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def update
    @post = Post.find(params[:id])
    if @post.is_delete == true
      @post.update(is_delete: false)
    else
      @post.update(is_delete: true)
    end
    respond_to do |format|
     format.html { render "show" }
     format.js
    end
  end
end
