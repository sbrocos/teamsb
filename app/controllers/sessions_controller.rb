class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:email])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'sessions/new'
    end
  end
  def destroy

  end
end
