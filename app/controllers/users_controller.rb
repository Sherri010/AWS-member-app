class UsersController < ApplicationController

  def index
    @users= User.all
  end


  def create
    @user = User.create( user_params )
    redirect_to users_path
  end


  private

  def user_params
  params.require(:user).permit(:avatar,:name)
end
end
