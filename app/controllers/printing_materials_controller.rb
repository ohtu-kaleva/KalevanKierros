class PrintingMaterialsController < ApplicationController
  before_action :redirect_if_user_not_admin

  def export_diplomas
    if !orienteering_exists?
      redirect_to :back, flash: {error: 'Tämän vuoden suunnistustapahtumaa ei ole vielä luotu.' } and return
    end

    year = AppSetting.find_by(name: 'KkYear').value.to_i

    sorted_results = Result.where(year: year).where("completed_events >= ?", 4).order('completed_events desc, pts_sum desc').all
    position = 1
    positions = {}
    sorted_results.each do |r|
      positions[r.kk_number] = position
      position += 1
    end

    receivers = Result.where(year: year).where("completed_events >= ?", 4).joins('LEFT OUTER JOIN users ON users.kk_number = results.kk_number').select("results.*, users.first_name, users.last_name").order('users.last_name asc, users.first_name asc')

    event_names = get_sport_event_names

    data = '{\rtf1\ansi\ansicpg1252\paperh16834\paperw11904\margl1417\margr1417\margt1417\margb1417\psz9{\colortbl\red0\green0\blue0;\red255\green255\blue255;}{\fonttbl\f0\fcharset0\fnil Arial;\f1\fcharset0\fnil Schneidler BT;\f2\fcharset0\fnil Times New Roman;\f3\fcharset0\fnil Arial;\f4\fcharset0\fnil Times New Roman;\f5\fcharset0\fnil Times New Roman;}'

    receivers.each do |e|
      first_space = '\sb1423'

      if e.completed_events == 6
        second_space = '\sb866'
      elsif e.completed_events == 5
        second_space = '\sb1156'
      else
        second_space = '\sb1446'
      end

      formatted_first_name = e.first_name #.titleize
      formatted_last_name = e.last_name #.titleize

      data << "\\pard\\plain\\sb6292\\tqc\\tx4134{\\plain\\tab\\fs36\\i\\b\\f1\\cf0\\cb1 #{formatted_last_name} #{formatted_first_name}{\\fs42\\par}}\\pard\\plain\\sb279\\tqr\\tx7826{\\plain\\tab\\fs24\\b\\f2\\cf0\\cb1 #{e.completed_events}{\\fs30\\par}}"

      if e.skating_pts
        data << "\\pard\\plain#{first_space}\\tx850\\tqr\\tx5212\\tqr\\tx6653\\tqr\\tx8507{\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{event_names[:skating]}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{e.skating_pos}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{seconds_to_human_form(e.skating_time)}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{sprintf('%.2f', e.skating_pts)}{\\fs26\\par}}"
        first_space = ''
      end
      if e.skiing_pts
        data << "\\pard\\plain#{first_space}\\tx850\\tqr\\tx5212\\tqr\\tx6653\\tqr\\tx8507{\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{event_names[:skiing]}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{e.skiing_pos}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{seconds_to_human_form(e.skiing_time)}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{sprintf('%.2f', e.skiing_pts)}{\\fs26\\par}}"
        first_space = ''
      end
      if e.marathon_pts
        data << "\\pard\\plain#{first_space}\\tx850\\tqr\\tx5212\\tqr\\tx6653\\tqr\\tx8507{\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{event_names[:marathon]}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{e.marathon_pos}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{seconds_to_human_form(e.marathon_time)}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{sprintf('%.2f', e.marathon_pts)}{\\fs26\\par}}"
        first_space = ''
      end
      if e.rowing_pts
        data << "\\pard\\plain#{first_space}\\tx850\\tqr\\tx5212\\tqr\\tx6653\\tqr\\tx8507{\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{event_names[:rowing]}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{e.rowing_pos}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{seconds_to_human_form(e.rowing_time)}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{sprintf('%.2f', e.rowing_pts)}{\\fs26\\par}}"
        first_space = ''
      end
      if e.cycling_pts
        data << "\\pard\\plain#{first_space}\\tx850\\tqr\\tx5212\\tqr\\tx6653\\tqr\\tx8507{\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{event_names[:cycling]}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{e.cycling_pos}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{seconds_to_human_form(e.cycling_time)}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{sprintf('%.2f', e.cycling_pts)}{\\fs26\\par}}"
        first_space = ''
      end
      if e.orienteering_pts
        data << "\\pard\\plain#{first_space}\\tx850\\tqr\\tx5212\\tqr\\tx6653\\tqr\\tx8507{\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{event_names[:orienteering]}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{e.orienteering_pos}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{seconds_to_human_form(e.orienteering_time)}\\plain\\tab\\fs20\\b\\f5\\cf0\\cb1 #{sprintf('%.2f', e.orienteering_pts)}{\\fs26\\par}}"
        first_space = ''
      end

      data << "\\pard\\plain#{second_space}\\tqr\\tx3860\\tqr\\tx7038{\\plain\\tab\\fs24\\b\\f2\\cf0\\cb1 #{sprintf('%.2f', e.pts_sum)}\\plain\\tab\\fs24\\b\\f2\\cf0\\cb1 #{positions[e.kk_number]}{\\fs30\\par}}{\\page}"

    end
    data << '}'
    data = data.encode!(Encoding::ISO_8859_1)
    send_data(data, filename: 'kunniakirjat.rtf')
  end

  def export_address_stickers
    participants = User.joins(:kk_enrollment).order('last_name, first_name')
    data = ''
    participants.each do |p|
      data << "#{p.first_name.titleize} #{p.last_name.titleize} #{p.street_address.titleize} #{p.postal_code} #{p.city.titleize}\n"
    end
    send_data(data, filename: 'osoitetarrat.csv')
  end

  private

  def orienteering_exists?
    year = AppSetting.find_by(name: 'KkYear').value.to_i
    year_date = DateTime.new(year)
    year_beginning = year_date.beginning_of_year
    year_ending = year_date.end_of_year
    events = Event.where(sport_type: 'OrienteeringEvent').where("second_end_date >= ? and second_end_date <= ?", year_beginning, year_ending)
    if events.count > 0
      return true
    else
      return false
    end
  end

  def get_sport_event_names
    year = AppSetting.find_by(name: 'KkYear').value.to_i
    year_date = DateTime.new(year)
    year_beginning = year_date.beginning_of_year
    year_ending = year_date.end_of_year
    events = Event.where("second_end_date >= ? and second_end_date <= ?", year_beginning, year_ending)
    names = {}
    names[:skating] = events.find_by(sport_type: "SkatingEvent").name
    names[:skiing] = events.find_by(sport_type: "SkiingEvent").name
    names[:marathon] = events.find_by(sport_type: "RunningEvent").name
    names[:rowing] = events.find_by(sport_type: "RowingEvent").name
    names[:cycling] = events.find_by(sport_type: "CyclingEvent").name
    names[:orienteering] = events.find_by(sport_type: "OrienteeringEvent").name
    names
  end

end