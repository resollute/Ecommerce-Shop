class Admin::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all.limit(10)
  end

  def show
    @user = User.find(params[:id])
    # localhost:3000/categories/:id get
  end
end
