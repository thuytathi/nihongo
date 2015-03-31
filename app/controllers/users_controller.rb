class UsersController < ApplicationController
  def new
    @user= User.new
  end
  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new user_params
    flash[:info] = "Thanks you for signup!"
   redirect_to root_url
    if @user.save
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end
end
