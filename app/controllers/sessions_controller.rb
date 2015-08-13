class SessionsController < ApplicationController
  def new
    # show a login form!
  end

  def create
    # post request to validate/create a session
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      ## hey we got logged in! yay!
      session[:user_id] = @user.id
      redirect_to '/home'
    else
      @message = 'Username or password is incorrect.'
      render '/sessions/new'
    end

  end

  def delete
    # delete/destroy the session
    session[:user_id] = nil
    redirect_to '/users/login'
  end
end
