class UsersController < ApplicationController
    before_action :require_authorization!, :only => [:show]

  def index
    if logged_in?
      redirect_to user_path(@current_user)
    else
      render :index
    end
  end

  def show
    current_user
    render :show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        login!(@user)
        format.html { redirect_to users_path }
        format.json
      else
        format.html { render :new }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
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
