class ResultsController < ApplicationController
  before_action :set_result_or_redirect, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, except: [:index, :index_by_year, :with_existing_group]

  # GET /results
  def index
    @years = (2015..Time.now.year).to_a
  end

  def index_by_year
    unless params[:year] =~ /\A\d{4}\z/ and valid_gender_and_age_series(params[:gender], params[:age_group])
      redirect_to :root and return
    end
    search_filter = form_gender_age_filter(params[:gender], params[:age_group])
    @res = {}
    @res[:series] = existing_age_series(params[:year])
    if params[:type] == 'all'
      @res[:results] = Result.where(year: params[:year]).where(series: search_filter).order('completed_events is null, completed_events desc, pts_sum desc')
    elsif params[:type] == 'cycling'
      @laji = "Pyöräily"
      @res[:results] = Result.where(year: params[:year]).where.not(cycling_time: nil).where(series: search_filter).order('cycling_pos asc').pluck('name, cycling_pos as position, cycling_pts as points, cycling_time as time')
    elsif params[:type] == 'rowing'
      @laji = "Soutu"
      @res[:results] = Result.where(year: params[:year]).where.not(rowing_time: nil).where.not(rowing_pts: nil).where(series: search_filter).order('rowing_pos asc').pluck('name, rowing_pos as position, rowing_pts as points, rowing_time as time')
    elsif params[:type] == 'orienteering'
      @laji = "Suunnistus"
      @res[:results] = Result.where(year: params[:year]).where.not(orienteering_time: nil).where(series: search_filter).order('orienteering_pos asc').pluck('name, orienteering_pos as position, orienteering_pts as points, orienteering_time as time')
    elsif params[:type] == 'skiing'
      @laji = "Hiihto"
      @res[:results] = Result.where(year: params[:year]).where.not(skiing_time: nil).where(series: search_filter).order('skiing_pos asc').pluck('name, skiing_pos as position, skiing_pts as points, skiing_time as time')
    elsif params[:type] == 'skating'
      @laji = "Luistelu"
      @res[:results] = Result.where(year: params[:year]).where.not(skating_time: nil).where(series: search_filter).order('skating_pos asc').pluck('name, skating_pos as position, skating_pts as points, skating_time as time')
    elsif params[:type] == 'marathon'
      @laji = "Juoksu"
      @res[:results] = Result.where(year: params[:year]).where.not(marathon_time: nil).where(series: search_filter).order('marathon_pos asc').pluck('name, marathon_pos as position, marathon_pts as points, marathon_time as time')
    else
      redirect_to :root and return
    end
    if @res[:results].empty? && params[:gender] == "all" && params[:age_group] == "all" && params[:type] == "all"
      redirect_to :results, flash: {error: 'Valitsemallesi vuodelle ei löydy tuloksia'} and return
    elsif @res[:results].empty?
      redirect_to index_by_year_path(params[:year], "all", "all", "all"), flash: {error: 'Valitsemillasi hakuparametreillä ei löydy tuloksia.' } and return
    end
    @res
  end

  def valid_gender_and_age_series(gender, age_series)
    if gender.in? ["all", "M", "N"] and age_series.in? ["all", "AL22", "yleinen", "40", "50", "55", "60", "65", "70", "75", "80", "85", "90", "95", "100"]
      true
    else
      false
    end
  end

  def form_gender_age_filter(gender, age_series)
    if age_series == "all"
      ages = ["AL22", "", "40", "50", "55", "60", "65", "70", "75", "80", "85", "90", "95", "100"]
    elsif age_series == "yleinen"
      ages = [""]
    else
      ages = [age_series]
    end
    if gender == "all"
      genders = ["M", "N"]
    else
      genders = [gender]
    end
    return genders.product(ages).map{|x| x.join}
  end

  def existing_age_series(year)
    series = Result.where(year: year).select('series').uniq
    age_series = []
    series.each do |s|
      series_string = s[:series].to_s
      if series_string == "N" || series_string == "M"
        series_string = "yleinen"
      else
        series_string = series_string[1,series_string.length]
      end
      age_series.append(series_string)
    end
    age_series.uniq.sort
  end

  # GET /results/1
  def show
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # GET /results/1/edit
  def edit
  end

  def xlsx_results_for_year_book
    year = AppSetting.find_by(name: 'KkYear').value.to_i
    if params[:gender] == 'kaikki'
      @results = Result.where(year: year).where("completed_events >= ?", 4).order('completed_events desc, pts_sum desc')
    elsif params[:gender] == 'naiset'
      @results = form_female_results_for_year_book(year)
    else
      @results = {}
    end
    respond_to do |format| 
      format.xlsx { send_data self.individual_results_to_xlsx.to_stream.read, filename: 'henkilokohtaiset_tulokset_' + params[:gender] + '.xlsx' }
    end
  end

  def form_female_results_for_year_book(year)
    search_filter = form_gender_age_filter('N', 'all')
    positions = {skating: {}, skiing: {}, marathon: {}, rowing: {}, cycling: {}, orienteering: {}}
    skating = Result.where(year: year).where.not(skating_time: nil).where(series: search_filter).order('skating_pos asc').pluck('kk_number')
    i = 1
    skating.each do |kk_number|
      positions[:skating][kk_number] = i
      i += 1
    end
    skiing = Result.where(year: year).where.not(skiing_time: nil).where(series: search_filter).order('skiing_pos asc').pluck('kk_number')
    i = 1
    skiing.each do |kk_number|
      positions[:skiing][kk_number] = i
      i += 1
    end
    marathon = Result.where(year: year).where.not(marathon_time: nil).where(series: search_filter).order('marathon_pos asc').pluck('kk_number')
    i = 1
    marathon.each do |kk_number|
      positions[:marathon][kk_number] = i
      i += 1
    end
    rowing = Result.where(year: year).where.not(rowing_time: nil).where.not(rowing_pts: nil).where(series: search_filter).order('rowing_pos asc').pluck('kk_number')
    i = 1
    rowing.each do |kk_number|
      positions[:rowing][kk_number] = i
      i += 1
    end
    cycling = Result.where(year: year).where.not(cycling_time: nil).where(series: search_filter).order('cycling_pos asc').pluck('kk_number')
    i = 1
    cycling.each do |kk_number|
      positions[:cycling][kk_number] = i
      i += 1
    end
    orienteering = Result.where(year: year).where.not(orienteering_time: nil).where(series: search_filter).order('orienteering_pos asc').pluck('kk_number')
    i = 1
    orienteering.each do |kk_number|
      positions[:orienteering][kk_number] = i
      i += 1
    end

    results = Result.where(year: year).where("completed_events >= ?", 4).where(series: search_filter).order('completed_events desc, pts_sum desc')
    results.each do |r|
      r.skating_pos = positions[:skating][r.kk_number]
      r.skiing_pos = positions[:skiing][r.kk_number]
      r.marathon_pos = positions[:marathon][r.kk_number]
      r.rowing_pos = positions[:rowing][r.kk_number]
      r.cycling_pos = positions[:cycling][r.kk_number]
      r.orienteering_pos = positions[:orienteering][r.kk_number]
    end
    results
  end

  def individual_results_to_xlsx
    Axlsx::Package.new do |individual_results|
      individual_results.workbook do |wb|
        wb.add_worksheet do |sheet|
          i = 1
          @results.each do |r|
            add_result_to_sheet(sheet, r, i)
            i += 1
            sheet.add_row ['', '', '', '', '', '', '', '', '']
          end
        end
      end
    end
  end

  def add_result_to_sheet(sheet, r, total_pos)
    if r.orienteering_pts
      sheet.add_row [total_pos, r.name, r.group, r.pts_sum.round(2), 'Suunnistus', '', seconds_to_human_form(r.orienteering_time), r.orienteering_pos, sprintf('%.2f', r.orienteering_pts)]
    else
      sheet.add_row [total_pos, r.name, r.group, r.pts_sum, 'Suunnistus', '', '0:00:00', '0', '0:00']
    end
    if r.cycling_pts
      sheet.add_row ['', '', r.series, '', 'Pyöräily', '', seconds_to_human_form(r.cycling_time), r.cycling_pos, sprintf('%.2f', r.cycling_pts)]
    else
      sheet.add_row ['', '', r.series, '', 'Pyöräily', '', '0:00:00', '0', '0:00']
    end
    if r.rowing_style == 'Yksin'
      r_style = 'Y'
    else
      r_style = 'V'
    end
    if r.rowing_pts
      sheet.add_row ['', '', '', '', 'Soutu', r_style, seconds_to_human_form(r.rowing_time), r.rowing_pos, sprintf('%.2f', r.rowing_pts)]
    else
      sheet.add_row ['', '', '', '', 'Soutu', '', '0:00:00', '0', '0:00']
    end
    if r.marathon_style == 'maraton'
      m_style = 'M'
    else
      m_style = 'PM'
    end
    if r.marathon_pts
      sheet.add_row ['', '', '', '', 'Juoksu', m_style, seconds_to_human_form(r.marathon_time), r.marathon_pos, sprintf('%.2f', r.marathon_pts)]
    else
      sheet.add_row ['', '', '', '', 'Juoksu', '', '0:00:00', '0', '0:00']
    end
    if r.skiing_style == 'Perinteinen'
      s_style = 'P'
    else
      s_style = 'V'
    end
    if r.skiing_pts
      sheet.add_row ['', '', '', '', 'Hiihto', s_style, seconds_to_human_form(r.skiing_time), r.skiing_pos, sprintf('%.2f', r.skiing_pts)]
    else
      sheet.add_row ['', '', '', '', 'Hiihto', '', '0:00:00', '0', '0:00']
    end
    if r.skating_pts
      sheet.add_row ['', '', '', '', 'Luistelu', '', seconds_to_human_form(r.skating_time), r.skating_pos, sprintf('%.2f', r.skating_pts)]
    else
      sheet.add_row ['', '', '', '', 'Luistelu', '', '0:00:00', '0', '0:00']
    end
  end

  def with_existing_group
    if not params[:year] =~ /\A\d{4}\z/
      redirect_to :root and return
    end
    groups = Result.where(year: params[:year]).where.not(group: nil).order(:group).uniq.pluck(:group)
    if groups.empty?
      redirect_to :root and return
    end
    @group_results = {}
    groups.each do |group|
      @group_results[group] = calculate_group_results(group, params[:year])
    end
  end

  def with_female_group
    year = AppSetting.find_by(name: 'KkYear').value.to_i
    groups = Result.where(year: year).where.not(group: nil).order(:group).uniq.pluck(:group)
    @group_results = {}
    groups.each do |group|
      if female_group?(group, year)
        @group_results[group] = calculate_group_results(group, year)
      end
    end
    @group_results = @group_results.sort_by { |k, v| v[:total] }.reverse
    respond_to do |format|
      format.xlsx { send_data self.group_result_to_xlsx.to_stream.read, filename: 'naisten_joukkuetulokset.xlsx' }
    end
  end

  def with_mixed_group
    year = AppSetting.find_by(name: 'KkYear').value.to_i
    groups = Result.where(year: year).where.not(group: nil).order(:group).uniq.pluck(:group)
    @group_results = {}
    groups.each do |group|
      if not female_group?(group, year)
        @group_results[group] = calculate_group_results(group, year)
      end
    end
    @group_results = @group_results.sort_by { |k, v| v[:total] }.reverse
    respond_to do |format|
      format.xlsx { send_data self.group_result_to_xlsx.to_stream.read, filename: 'sekajoukkuetulokset.xlsx' }
    end
  end

  def female_group?(group, year)
    member_results = Result.where(year: year).where(group: group)
    member_results.each do |member|
      if member.series[0,1] == 'M'
        return false
      end
    end
    return true
  end

  def group_result_to_xlsx
    Axlsx::Package.new do |group_results|
      group_results.workbook do |wb|
        bold = wb.styles.add_style :b => true
        wb.add_worksheet do |sheet|
          sheet.add_row ['', 'Joukkue', 'Pisteet', 'Jäsen', 'Luistelu', 'Hiihto', 'Juoksu', 'Soutu', 'Pyöräily', 'Suunnistus']
          i = 1
          @group_results.each do |group, group_results|
            group_name = group
            group_points = group_results[:total].round(2)
            position = i
            group_results[:individual_results].each do |id, individual_result|
              sheet.add_row format_group_result_row(position, group_name, group_points, individual_result), style: format_highligth_row(individual_result, bold)
              group_name = ''
              group_points = ''
              position = ''
            end
            i += 1
            sheet.add_row ['', '', '', '', '', '', '', '', '', '']
          end
        end
      end
    end
  end

  def format_group_result_row(position, group_name, group_points, individual_result)
    data = [position, group_name, group_points]
    data << individual_result[:result][:name]
    if individual_result[:result][:skating_pts]
      data << individual_result[:result][:skating_pts].round(2)
    else
      data << 0
    end
    if individual_result[:result][:skiing_pts]
      data << individual_result[:result][:skiing_pts].round(2)
    else
      data << 0
    end
    if individual_result[:result][:marathon_pts]
      data << individual_result[:result][:marathon_pts].round(2)
    else
      data << 0
    end
    if individual_result[:result][:rowing_pts]
      data << individual_result[:result][:rowing_pts].round(2)
    else
      data << 0
    end
    if individual_result[:result][:cycling_pts]
      data << individual_result[:result][:cycling_pts].round(2)
    else
      data << 0
    end
    if individual_result[:result][:orienteering_pts]
      data << individual_result[:result][:orienteering_pts].round(2)
    else
      data << 0
    end
  end

  def format_highligth_row(individual_result, bold)
    data = [nil, nil, nil, nil]
    if individual_result[:result_noted][:skating]
      data << bold
    else
      data << nil
    end
    if individual_result[:result_noted][:skiing]
      data << bold
    else
      data << nil
    end
    if individual_result[:result_noted][:marathon]
      data << bold
    else
      data << nil
    end
    if individual_result[:result_noted][:rowing]
      data << bold
    else
      data << nil
    end
    if individual_result[:result_noted][:cycling]
      data << bold
    else
      data << nil
    end
    if individual_result[:result_noted][:orienteering]
      data << bold
    else
      data << nil
    end
  end

  def top_results_for_different_series
    year = AppSetting.find_by(name: 'KkYear').value.to_i
    filters = form_gender_age_filter('all', 'all')
    data = ''
    filters.each do |filter|
      results = Result.where(year: year).where(series: filter).order('completed_events is null, completed_events desc, pts_sum desc').take(6)
      if results.count > 0
        data << filter + ",,,,\n"
      end
      i = 1
      results.each do |r|
        if r.group
          group_name = r.group
        else
          group_name = ''
        end
        data << i.to_s + ", " + r.completed_events.to_s + ", " + r.name + ", " + group_name + ", " + sprintf('%.2f', r.pts_sum).to_s + "\n"
        i += 1
      end
    end
    data = data.encode!(Encoding::UTF_8)
    send_data(data, filename: 'sarjoittaiset_tulokset.csv')
  end

  def calculate_group_results(group, year)
    individual_results = Result.where(year: year).where(group: group).order(:name)
    group_results = {:total => 0, :individual_results => {}}
    marathon_points = {}
    skiing_points = {}
    orienteering_points = {}
    skating_points = {}
    cycling_points = {}
    rowing_points = {}
    individual_results.each do |result|
      group_results[:individual_results][result.id] = {}
      group_results[:individual_results][result.id][:result] = result
      group_results[:individual_results][result.id][:result_noted] = {:marathon => false, :skiing => false, :orienteering => false, :skating => false, :cycling => false, :rowing => false}
      group_results[:individual_results][result.id][:sum_of_noted_results] = 0
      if result.marathon_pts
        marathon_points[result.id] = result.marathon_pts
      end
      if result.skiing_pts
        skiing_points[result.id] = result.skiing_pts
      end
      if result.orienteering_pts
        orienteering_points[result.id] = result.orienteering_pts
      end
      if result.skating_pts
        skating_points[result.id] = result.skating_pts
      end
      if result.cycling_pts
        cycling_points[result.id] = result.cycling_pts
      end
      if result.rowing_pts
        rowing_points[result.id] = result.rowing_pts
      end
    end
    marathon_points = marathon_points.sort_by { |k, v| v }.reverse!
    skiing_points = skiing_points.sort_by { |k, v| v }.reverse!
    orienteering_points = orienteering_points.sort_by { |k, v| v }.reverse!
    skating_points = skating_points.sort_by { |k, v| v }.reverse!
    cycling_points = cycling_points.sort_by { |k, v| v }.reverse!
    rowing_points = rowing_points.sort_by { |k, v| v }.reverse!
    sport_sum = 0
    if marathon_points.count > 0
      marathon_points = Hash[marathon_points.take(4)]
      marathon_points.each do |id, points|
        sport_sum += points
        group_results[:individual_results][id][:result_noted][:marathon] = true
        group_results[:individual_results][id][:sum_of_noted_results] += points
      end
    end
    group_results[:total] += sport_sum
    group_results[:marathon_sum] = sport_sum
    sport_sum = 0
    if skiing_points.count > 0
      skiing_points = Hash[skiing_points.take(4)]
      skiing_points.each do |id, points|
        sport_sum += points
        group_results[:individual_results][id][:result_noted][:skiing] = true
        group_results[:individual_results][id][:sum_of_noted_results] += points
      end
    end
    group_results[:total] += sport_sum
    group_results[:skiing_sum] = sport_sum
    sport_sum = 0
    if orienteering_points.count > 0
      orienteering_points = Hash[orienteering_points.take(4)]
      orienteering_points.each do |id, points|
        sport_sum += points
        group_results[:individual_results][id][:result_noted][:orienteering] = true
        group_results[:individual_results][id][:sum_of_noted_results] += points
      end
    end
    group_results[:total] += sport_sum
    group_results[:orienteering_sum] = sport_sum
    sport_sum = 0
    if skating_points.count > 0
      skating_points = Hash[skating_points.take(4)]
      skating_points.each do |id, points|
        sport_sum += points
        group_results[:individual_results][id][:result_noted][:skating] = true
        group_results[:individual_results][id][:sum_of_noted_results] += points
      end
    end
    group_results[:total] += sport_sum
    group_results[:skating_sum] = sport_sum
    sport_sum = 0
    if cycling_points.count > 0
      cycling_points = Hash[cycling_points.take(4)]
      cycling_points.each do |id, points|
        sport_sum += points
        group_results[:individual_results][id][:result_noted][:cycling] = true
        group_results[:individual_results][id][:sum_of_noted_results] += points
      end
    end
    group_results[:total] += sport_sum
    group_results[:cycling_sum] = sport_sum
    sport_sum = 0
    if rowing_points.count > 0
      rowing_points = Hash[rowing_points.take(4)]
      rowing_points.each do |id, points|
        sport_sum += points
        group_results[:individual_results][id][:result_noted][:rowing] = true
        group_results[:individual_results][id][:sum_of_noted_results] += points
      end
    end
    group_results[:total] += sport_sum
    group_results[:rowing_sum] = sport_sum
    group_results
  end

  # POST /results
  def create
    @result = Result.new(result_params)

    if @result.save
      redirect_to index_by_year_path @result.year, notice: 'Result was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /results/1
  def update
    if @result.update(result_params)
      redirect_to edit_result_path(@result), notice: 'Result was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /results/1
  def destroy
    @result.destroy
    redirect_to results_url, notice: 'Result was successfully destroyed.'
  end

  def scale_times(event)
    enrollments = event.enrollments.where.not(time: nil)
    temp_times = {}
    if event.sport_type == 'RunningEvent'
      enrollments.each do |e|
        attr = e.enrollment_datas.find_by name: 'Tyyppi'
        if attr.value == 'puolimaraton'
            temp_times[e.user.kk_number] = {}
            temp_times[e.user.kk_number][:time] = event.penalty_factor * e.time
            temp_times[e.user.kk_number][:style] = 'puolimaraton'
        else
            temp_times[e.user.kk_number] = {}
            temp_times[e.user.kk_number][:time] = e.time
            temp_times[e.user.kk_number][:style] = 'maraton'
        end
      end
    elsif event.sport_type == 'SkiingEvent'
      enrollments.each do |e|
        attr = e.enrollment_datas.find_by name: 'Tyyli'
        if attr.value == 'Vapaa'
          temp_times[e.user.kk_number] = {}
          temp_times[e.user.kk_number][:time] = event.penalty_factor * e.time
          temp_times[e.user.kk_number][:style] = 'Vapaa'
        else
          temp_times[e.user.kk_number] = {}
          temp_times[e.user.kk_number][:time] = e.time
          temp_times[e.user.kk_number][:style] = 'Perinteinen'
        end
      end
    elsif event.sport_type == 'RowingEvent'
      enrollments.each do |e|
        temp_times[e.user.kk_number] = {}
        paddle = e.enrollment_datas.find_by name: 'Melonta'
        style = e.enrollment_datas.find_by name: 'Tyyli'
        if paddle.value == 'Melonta'
          temp_times[e.user.kk_number][:time] = e.time
          temp_times[e.user.kk_number][:style] = 'Melonta'
        else
          temp_times[e.user.kk_number][:time] = e.time
        end
        if style.value == 'Vuoro'
          if female_penalty_applied?(e)
            # add female penalty to temp_times
            temp_times[e.user.kk_number][:time] += (60 * event.penalty_factor)
          end
          temp_times[e.user.kk_number][:time] += (60 * event.rowing_penalty)
          temp_times[e.user.kk_number][:style] = 'Vuoro'
        elsif paddle.value != 'Melonta'
          temp_times[e.user.kk_number][:style] = 'Yksin'
        end
      end
    else
      enrollments.each do |e|
        temp_times[e.user.kk_number] = {}
        temp_times[e.user.kk_number][:time] = e.time
        temp_times[e.user.kk_number][:style] = ''
      end
    end
    temp_times
  end

  def female_penalty_applied?(enrollment)
    user = enrollment.user
    attr = enrollment.enrollment_datas.find_by name: 'Parin sukupuoli'
    if user.gender == 'N'
      if attr.value == 'M'
        return true
      end
    end
    false
  end

  def unscaled_times(event)
    enrollments = event.enrollments
    temp_times = {}
    enrollments.each do |e|
      temp_times[e.user.kk_number] = e.time
    end
    temp_times
  end

  def calculate_points
    event = Event.find_by id: params[:event_id]
    times = scale_times(event)
    normal_times = unscaled_times(event)
    times_sorted = Hash[times.sort_by { |k, v| v[:time] }]
    winner_time = get_winner_time(times_sorted)
    winner_time = BigDecimal.new(winner_time)
    position = 1
    year = event.second_end_date.year
    times_sorted.each do |number, time_and_style|
      if time_and_style[:time]
        if time_and_style[:style] != 'Melonta'
          own_time = BigDecimal.new(time_and_style[:time])
          points = 1000 - event.factor * Math.log10(own_time / winner_time)
          points = BigDecimal.new(points.to_s)
          if points < 0
            points = 0
          end
          result_found = insert_result_for_event(event.sport_type, number, year, points, normal_times[number], position, time_and_style[:style])
          normal_times.delete number
          if result_found
            position += 1
          end
        end
      end
    end
    normal_times.each do |number, time|
      if event.sport_type == 'RowingEvent' and not time.nil?
        insert_result_for_event(event.sport_type, number, year, nil, time, nil, 'Melonta')
      else
        insert_result_for_event(event.sport_type, number, year, nil, nil, nil, nil)
      end
    end
    redirect_to results_path
  end

  def get_winner_time(times)
    winner_time = nil
    times.each do |k, v|
      if v[:style] != 'Melonta'
        winner_time = v[:time]
        break
      end
    end
    winner_time
  end

  def insert_result_for_event(sport_type, number, year, points, time, position, style)
    result = Result.find_by_kk_number_and_year(number, year)
    if result
      if sport_type == "RunningEvent"
        result.marathon_pts = points
        result.marathon_time = time
        result.marathon_pos = position
        result.marathon_style = style
        result.save
        totals = check_total_events(result)
        result.completed_events = totals[:total_events]
        result.pts_sum = totals[:total_points]
        result.save
      elsif sport_type == "SkiingEvent"
        result.skiing_pts = points
        result.skiing_time = time
        result.skiing_pos = position
        result.skiing_style = style
        totals = check_total_events(result)
        result.completed_events = totals[:total_events]
        result.pts_sum = totals[:total_points]
        result.save
      elsif sport_type == "SkatingEvent"
        result.skating_pts = points
        result.skating_time = time
        result.skating_pos = position
        result.save
        totals = check_total_events(result)
        result.completed_events = totals[:total_events]
        result.pts_sum = totals[:total_points]
        result.save
      elsif sport_type == "CyclingEvent"
        result.cycling_pts = points
        result.cycling_time = time
        result.cycling_pos = position
        result.save
        totals = check_total_events(result)
        result.completed_events = totals[:total_events]
        result.pts_sum = totals[:total_points]
        result.save
      elsif sport_type == "OrienteeringEvent"
        result.orienteering_pts = points
        result.orienteering_time = time
        result.orienteering_pos = position
        result.save
        totals = check_total_events(result)
        result.completed_events = totals[:total_events]
        result.pts_sum = totals[:total_points]
        result.save
      elsif sport_type == "RowingEvent"
        result.rowing_pts = points
        result.rowing_time = time
        result.rowing_pos = position
        result.rowing_style = style
        result.save
        totals = check_total_events(result)
        result.completed_events = totals[:total_events]
        result.pts_sum = totals[:total_points]
        result.save
      end
      result_found = true
    else
      result_found = false
    end
    result_found
  end

  def check_total_events(result)
    totals = {}
    totals[:total_events] = 0
    totals[:total_points] = 0
    if result.marathon_pts
      totals[:total_events] += 1
      totals[:total_points] += result.marathon_pts
    end
    if result.skiing_pts
      totals[:total_events] += 1
      totals[:total_points] += result.skiing_pts
    end
    if result.skating_pts
      totals[:total_events] += 1
      totals[:total_points] += result.skating_pts
    end
    if result.cycling_pts
      totals[:total_events] += 1
      totals[:total_points] += result.cycling_pts
    end
    if result.orienteering_pts
      totals[:total_events] += 1
      totals[:total_points] += result.orienteering_pts
    end
    if result.rowing_pts
      totals[:total_events] += 1
      totals[:total_points] += result.rowing_pts
    end
    if result.rowing_time and result.rowing_style == 'Melonta'
      totals[:total_events] += 1
    end
    totals
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_or_redirect
      @result = Result.find(params[:id])
      return if @result
      redirect_to :root
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:name, :city, :group, :year, :series, :orienteering_pts, :skiing_pts, :marathon_pts, :rowing_pts, :cycling_pts, :skating_pts, :orienteering_time, :skiing_time, :marathon_time, :rowing_time, :cycling_time, :skating_time, :orienteering_pos, :skiing_pos, :marathon_pos, :rowing_pos, :cycling_pos, :skating_pos, :pts_sum, :completed_events, :rowing_style, :skiing_style, :marathon_style)
    end
end