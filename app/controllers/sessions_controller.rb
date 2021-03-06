class SessionsController < ApplicationController
  def create

    p request.env['omniauth.auth']

    auth = request.env['omniauth.auth']
    @user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)

    if @user
      login!(@user)
      redirect_to user_path(@user)
    else
      render redirect_to root_url
    end
    
    # @user = User.find_by_email(session_params[:email])

    # p "I'm receiving Ajax request" if request.xhr?

    # respond_to do |format|
    #   if @user && @user.authenticate(session_params[:password])
    #     login!(@user)
    #     format.json { render :json => @user, :status => :created, :location => @user }
    #     format.html { redirect_to users_path }
    #   else
    #     @error_messages = { :errors => ["Invalid username or password"] }
    #     format.json { render :json => @error_messages, :status => :unprocessable_entity }
    #     puts "I'm sending json format of #{@error_messages} to the browser!"
    #   end
    # end
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
