class Admin::SearchesController < ApplicationController
  def search
    @model_name = params[:model_name]
    if @model_name == "User"
      @users = User.looks(params[:search_option], params[:ward])
    elsif  @model_name == "Post"
      @posts = Post.looks(params[:search_option], params[:ward])
    elsif @model_name == "Store"
      @stores = Store.looks(params[:search_option], params[:ward])
    else # @model_name == "Tag"
      @tags = Tag.looks(params[:search_option], params[:ward])
      # ここの流れまだ
      # ここから配列の中身をバラしてTagが含まれるPostを探して表示したい
    end
  end
end
