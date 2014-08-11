class SessionsController < ApplicationController
  def new

  end

  def create
    error_message = { error: 'Tarkista käyttäjätunnus ja salasana!' }
    user = User.find_by username: params[:username]

    if user
      if user.authenticate params[:password]
        if user.active
          session[:user_id] = user.id
          redirect_to :root, flash: { success: "Tervetuloa " + user.first_name }
          return
        else
          error_message = { error: 'Tunnus ei ole aktivoitu. Ohjeet aktivointiin on lähetetty sähköpostilla rekisteröitymisen yhteydessä.' }
        end
      end
    end

    redirect_to :back, flash: error_message
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
