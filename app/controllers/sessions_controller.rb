class SessionsController < ApplicationController
  def new
    @redirect = params[:redirect]
    @id = params[:id]
  end

  def create
    error_message = { error: 'Tarkista käyttäjätunnus ja salasana!' }
    user = User.find_by username: params[:username]

    if user
      if user.authenticate params[:password]
        if user.active
          session[:user_id] = user.id
          if not session[:redirect_url].nil?
	    url = session[:redirect_url]
            session[:redirect_url] = nil
            redirect_to url, flash: { success: "Tervetuloa " + user.first_name } and return
          else
            redirect_to root_path, flash: { success: "Tervetuloa " + user.first_name } and return
          end
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
