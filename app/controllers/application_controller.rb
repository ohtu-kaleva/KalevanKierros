class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_is_admin?, :redirect_if_user_not_admin, :usersearch,
                :enrollment_open?, :seconds_to_human_form, :eventusersearch, :statisticsearch, :enrollment_deadline_gone?

  def authenticate
    if not current_user
      session[:redirect_url] = request.url
      redirect_to signin_path
    end
  end

  def current_user
    return nil if session[:user_id].nil?

    user = User.find_by id: session[:user_id]
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

  # käyttäjähaku ryhmälomakkeeseen
  def usersearch
    usersearch = User.where.not("kk_number LIKE?", "1%")
    usersearch.map{|user| {:label =>  user.kk_number.to_s << ' ' << user.first_name << ' ' << user.last_name, :value => user.kk_number, :gender => user.gender } }.to_json
  end

  def statisticsearch
    statisticsearch = Statistic.where 'statistics.user_id IS NULL'
    statisticsearch.map { |statistic| { label: statistic.kk_number.to_s << ' ' << statistic.first_name << ' ' << statistic.last_name, statistic_id: statistic.id } }.to_json
  end

  def eventusersearch
    @event = Event.find_by id: params[:event_id]
    @event.to_autocomplete
  end


  def enrollment_open?
    setting = AppSetting.find_by(name: 'KkEnrollmentStatus')
    return setting && setting.value == 'open'
  end

  def enrollment_deadline_gone?
    setting = AppSetting.find_by(name: 'Enrollment_Deadline')
    if setting
      date = Date.parse(setting.value)
      gone = Date.today > date
      return gone
    else
      return true
    end
  end

  def seconds_to_human_form(time)
    if time
      Time.at(time).gmtime.strftime('%R:%S')
    else
      'Ei aikaa'
    end
  end
end
