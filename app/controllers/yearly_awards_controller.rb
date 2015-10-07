class YearlyAwardsController < ApplicationController
  before_action :redirect_if_user_not_admin

  def list_years_awards
    @year = AppSetting.find_by(name: 'KkYear').value.to_i
    participants = User.joins(:kk_enrollment).where.not(kk_enrollments: { id: nil }).joins('JOIN results ON results.kk_number = users.kk_number').select('users.*, results.pts_sum, results.completed_events')
    @veljeskunta = get_veljeskunta_receivers(participants)
    @kunniakiertajat = get_kunniakiertaja_receivers(participants)
    @ansioviirit = get_ansioviiri_receivers(participants)
    @vuoden_kehittyjat = get_vuoden_kehittyjat(participants)
  end

  private

  def get_veljeskunta_receivers(participants)
    receivers = []
    participants.each do |p|
      if p.statistic.v == 0
        if p.completed_events >= 4
          years_participated = 1
          years_participated += p.statistic.four_events_completed_count
          years_participated += p.statistic.five_events_completed_count
          years_participated += p.statistic.six_events_completed_count
          if years_participated >= 25
            receivers << p
          end
        end
      end
    end
    receivers
  end

  def get_kunniakiertaja_receivers(participants)
    receivers = []
    participants.each do |p|
      if p.statistic.k == 0
        if p.completed_events >= 4
          if p.completed_events + p.statistic.total_events_completed >= 60
            receivers << p
          end
        end
      end
    end
    receivers
  end

  def get_ansioviiri_receivers(participants)
    receivers = []
    participants.each do |p|
      if p.statistic.a == 0 and not p.statistic.ap
        if p.completed_events >= 4
          if p.completed_events + p.statistic.total_events_completed >= 30
            receivers << p
          end
        end
      end
    end
    receivers
  end

  def get_vuoden_kehittyjat(participants)
    receivers = []
    participants.each do |p|
      if p.completed_events == 6 and p.statistic.prev_year_event_sum == 6
        receivers << p
      end
    end
    receivers.sort_by{|r| r.pts_sum - r.statistic.prev_year_pts_sum}.reverse!
  end
end