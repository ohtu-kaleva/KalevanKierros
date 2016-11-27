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
          if params[:redirect] == 'kkenrollment'
            redirect_to ilmoittautuminen_path, flash: { success: "Tervetuloa " + user.first_name } and return
          elsif params[:redirect] == 'event' and not params[:id].nil?
            redirect_to add_enrollment_path(event_id: params[:id]), flash: { success: "Tervetuloa " + user.first_name } and return
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
