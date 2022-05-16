class Admin::TagsController < ApplicationController
  def new
  end

  def index
    @tags = Tag.all
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
