class Admin::StoresController < ApplicationController
  def index
    @stores = Store.all
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
