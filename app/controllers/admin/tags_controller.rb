class Admin::TagsController < ApplicationController
  def new
  end

  def index
    @tags = Tag.all
  end

  def edit
    @tag = Tag.find(params[:id])
    respond_to do |format|
     format.html { render "index" }
     format.js
    end
  end

  def destroy
    Tag.find(params[:id]).destroy
    @tags = Tag.all
    respond_to do |format|
     format.html { render "index" }
     format.js
    end
  end

  def update
    tag = Tag.find(params[:id])
    tag.update(tag_params)
    @tags = Tag.all
    respond_to do |format|
     format.html { render "index" }
     format.js
    end
  end

private
  def tag_params
    params.require(:tag).permit(:name)
  end

end
