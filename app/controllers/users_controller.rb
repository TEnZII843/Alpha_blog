class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    # binding.pry
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the Alpha BLog #{@user.username}, you have successfully logged in"
      redirect_to articles_path

    else
      render 'new'
    end
  end
  private
  def user_params
    params.require(:user).permit(:username,:email,:password)
  end


end