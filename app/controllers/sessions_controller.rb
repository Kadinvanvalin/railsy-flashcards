class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @message = "Either your username or password was wrong"
      render "new"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

end
