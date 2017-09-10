class UsersController < ApplicationController
  before_action :require_login, only: [:index]
  
  def new
    @user = User.new
  end

  def create
    redirect_to root_path
  end
end
