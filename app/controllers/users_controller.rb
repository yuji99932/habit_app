class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @schedules = current_user.schedules
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    else
      render 'edit'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :encrypted_password, :nickname, :gender)
  end
end
