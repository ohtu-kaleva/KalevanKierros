class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_is_admin?, :redirect_if_user_not_admin, :usersearch,
                :enrollment_open?, :seconds_to_human_form, :eventusersearch

  def current_user
    return nil if session[:user_id].nil?

    user = User.find(session[:user_id])
    if user && user.active
      user
    else
      nil
    end
  end

  def user_name
    return nil if session[:user_id].nil?
    User.find(session[:user_id]).first_name
  end

  def user_is_admin?
    current_user && current_user.admin
  end

  def redirect_if_user_not_admin
    redirect_to :root unless user_is_admin?
  end

  # käyttäjähaku ryhmälomakkeeseen, TODO haun rajaus
  def usersearch
    usersearch = User.all
    usersearch.map{|user| {:label =>  user.kk_number.to_s << ' ' << user.first_name << ' ' << user.last_name, :value => user.kk_number } }.to_json
  end

  def eventusersearch
    @event = Event.find_by id: params[:event_id]
    @event.to_autocomplete
  end


  def enrollment_open?
    setting = AppSetting.find_by(name: 'KkEnrollmentStatus')
    return setting && setting.value == 'open'
  end

  def seconds_to_human_form(time)
    if time
      Time.at(time).gmtime.strftime('%R:%S')
    else
      'Ei aikaa'
    end
  end
end
