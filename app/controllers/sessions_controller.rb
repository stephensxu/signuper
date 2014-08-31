class SessionsController < ApplicationController
  def create
    @user = User.find_by_email(session_params[:email])

    respond_to do |format|
      if @user && @user.authenticate(session_params[:password])
        login!(@user)
        format.html { redirect_to users_path }
      else
        @error_messages = { :password => ["Invalid username or password"] }
        format.json { render :json => @error_messages, :status => :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    logout! if logged_in?
    
    redirect_to(root_url)
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
