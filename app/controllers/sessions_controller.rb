class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by(session_params)
  if user.nil?
    session[:error] = "wrong username or password!"
    render :new
  else
    session[:success] = "login successfully!"
    session[:user_id] = user.id
    redirect_to messages_path
  end
end
  def session_params
    params.require(:session).permit(:username, :password)
  end
end
