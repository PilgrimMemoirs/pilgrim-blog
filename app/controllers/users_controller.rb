class UsersController < ApplicationController
  def index

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.user_id
      redirect_to('/')
    else

    end
  end

  def new
    @user = User.new
  end

  def edit
  end


  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
