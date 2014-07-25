class ResultsController < ApplicationController
  before_action :set_result_or_redirect, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, except: [:index, :index_by_year]

  # GET /results
  # GET /results.json
  def index
    @years = (2011..Time.now.year).to_a
  end

  def index_by_year
    @results = Result.where(year: params[:year])
    if @results.empty?
      redirect_to :root and return
    end
  end

  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to index_by_year_path @result.year, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def scale_times(event)
    enrollments = event.enrollments
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
    else
      enrollments.each do |e|
        temp_times[e.user.kk_number] = {}
        temp_times[e.user.kk_number][:time] = e.time
        temp_times[e.user.kk_number][:style] = ''
      end
    end
    puts temp_times
    temp_times
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
    winner_time = times_sorted.first.last[:time]
    position = 1
    year = event.second_end_date.year
    times_sorted.each do |number, time_and_style|
      puts time_and_style[:time]
      if time_and_style[:time]
        res = Result.find_by_kk_number_and_year(number, year)
        points = 1000 - event.factor * Math.log10(time_and_style[:time] / winner_time)
        insert_result_for_event(event.sport_type, res, points, normal_times[number], position, time_and_style[:style])
        position += 1
      end
    end
    redirect_to results_path
  end

  def insert_result_for_event(sport_type, result, points, time, position, style)
    if sport_type == "RunningEvent"
      result.marathon_pts = points
      result.marathon_time = time
      result.marathon_pos = position
      result.marathon_style = style
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
      totals = check_total_events(result)
      result.completed_events = totals[:total_events]
      result.pts_sum = totals[:total_points]
      result.save
    elsif sport_type == "CyclingEvent"
      result.cycling_pts = points
      result.cycling_time = time
      result.cycling_pos = position
      totals = check_total_events(result)
      result.completed_events = totals[:total_events]
      result.pts_sum = totals[:total_points]
      result.save
    elsif sport_type == "OrienteeringEvent"
      result.orienteering_pts = points
      result.orienteering_time = time
      result.orienteering_pos = position
      totals = check_total_events(result)
      result.completed_events = totals[:total_events]
      result.pts_sum = totals[:total_points]
      result.save
    elsif sport_type == "RowingEvent"
      result.rowing_pts = points
      result.rowing_time = time
      result.rowing_pos = position
      result.rowing_style = style
      totals = check_total_events(result)
      result.completed_events = totals[:total_events]
      result.pts_sum = totals[:total_points]
      result.save
    end
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
    totals
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_or_redirect
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:name, :city, :group, :year, :series, :orienteering_pts, :skiing_pts, :marathon_pts, :rowing_pts, :cycling_pts, :skating_pts, :orienteering_time, :skiing_time, :marathon_time, :rowing_time, :cycling_time, :skating_time, :orienteering_pos, :skiing_pos, :marathon_pos, :rowing_pos, :cycling_pos, :skating_pos, :pts_sum, :completed_events, :rowing_style, :skiing_style, :marathon_style)
    end
end
