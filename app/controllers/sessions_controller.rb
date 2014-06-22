class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by username: params[:username]
    if user && (user.authenticate params[:password])
      session[:user_id] = user.id
      flash[:success] = "Tervetuloa " + User.find(session[:user_id]).first_name
      redirect_to :root
    else
      flash[:error] = "Tarkista käyttäjätunnus ja salasana!"
      redirect_to :back
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end