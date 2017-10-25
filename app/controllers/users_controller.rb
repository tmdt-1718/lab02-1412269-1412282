class UsersController < ApplicationController
  def new
  end
  def create
    user = User.create(user_params)

    if user
      flash[:success]="signup successfully"
      redirect_to login_path
else
  flash[:error]="signup error"
  render :new
    end
  end
  private
  def user_params
    params.require(:user).permit( :username, :password)
  end
end
