class UsersController < ApplicationController
    before_action :require_authorization!, :only => [:show]

  def index
    current_user
    render :index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def require_authorization!
    redirect_to root_path unless logged_in?
  end

  def user_params
    params.require(:user).permit(:email, :nickname, :password, :password_confirmation)
  end
end
