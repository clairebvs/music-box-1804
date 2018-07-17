class SessionsController < ApplicationController
  def new
    # log the user out
  end

  def create
    @user = User.find_by_username(params[:username])
    # OR user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # FIXME comment
      # TODO we might want to add flash message saying username/password combo was not valid
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
