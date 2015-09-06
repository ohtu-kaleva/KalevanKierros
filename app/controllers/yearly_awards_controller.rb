class YearlyAwardsController < ApplicationController
  before_action :redirect_if_user_not_admin

  def list_years_awards
    @year = AppSetting.find_by(name: 'KkYear').value.to_i
    years_results = Result.where(year: @year).all
    users = []
    results = {}
    years_results.each do |r|
      user = User.find_by(kk_number: r.kk_number)
      users << user
      results[user.kk_number] = r
    end
    @veljeskunta = get_veljeskunta_receivers(results, users)
    @kunniakiertajat = get_kunniakiertaja_receivers(results, users)
    @ansioviirit = get_ansioviiri_receivers(results, users)
    @vuoden_kehittyjat = get_vuoden_kehittyja(@year, users)
  end

  private

  def get_veljeskunta_receivers(results, users)
    receivers = {}
    users.each do |u|
      if u.statistic.v == 0
        if results[u.kk_number].completed_events >= 4
          years_participated = results[u.kk_number].completed_events
          years_participated += u.statistic.four_events_completed_count
          years_participated += u.statistic.five_events_completed_count
          years_participated += u.statistic.six_events_completed_count
          if years_participated >= 25
            receivers[u.kk_number] = [u, results[u.kk_number]]
          end
        end
      end
    end
    receivers
  end

  def get_kunniakiertaja_receivers(results, users)
    receivers = {}
    users.each do |u|
      if u.statistic.k == 0
        if results[u.kk_number].completed_events >= 4
          if results[u.kk_number].completed_events + u.statistic.total_events_completed >= 60
            receivers[u.kk_number] = [u, results[u.kk_number]]
          end
        end
      end
    end
    receivers
  end

  def get_ansioviiri_receivers(results, users)
    receivers = {}
    users.each do |u|
      if u.statistic.a == 0
        if results[u.kk_number].completed_events >= 4
          if results[u.kk_number].completed_events + u.statistic.total_events_completed >= 30
            receivers[u.kk_number] = [u, results[u.kk_number]]
          end
        end
      end
    end
    receivers
  end

  def get_vuoden_kehittyja(year, users)
    results = Result.where("year == ? and completed_events == ?", year, 6)
    receivers = []
    #kesken
    receivers
  end
end
