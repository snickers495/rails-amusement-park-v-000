class SessionsController < ApplicationController
  def welcome
  end

  def signin
    @user = User.new
  end

  def signin_user
    user = User.find_by(name: user_params[:name])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to "/"
    end
  end

  def signout
    if session[:user_id]
      session.clear
      redirect_to "/"
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :password)
  end
end
