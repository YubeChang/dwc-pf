class Admin::SearchesController < ApplicationController

  def search
    @model_name = params[:model_name]
    if @model_name == "User"
      @users = User.looks(params[:search_option], params[:ward])
      render "admin/users/index"
    elsif  @model_name == "Post"
      @posts = Post.looks(params[:search_option], params[:ward])
      render "admin/posts/index"
    elsif @model_name == "Store"
      @stores = Store.looks(params[:search_option], params[:ward])
      render "admin/stores/index"
    else # @model_name == "Tag"
      @tags = Tag.looks(params[:search_option], params[:ward])
      render "admin/tags/index"
      # ここの流れまだ
      # ここから配列の中身をバラしてTagが含まれるPostを探して表示したい?
    end
  end

end
