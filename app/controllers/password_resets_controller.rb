class PasswordResetsController < ApplicationController

  def new
  end

  def edit
  end

  def create
    u = User.find_by username: params[:username], email: params[:email]
    puts u.full_name
    redirect_to :back
  end

  def update
  end
end
