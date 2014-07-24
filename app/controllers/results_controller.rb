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
        attr = e.event_attributes.find_by name: 'Tyyppi'
        if attr.value == 'puolimaraton'
          temp_times[e.user.kk_number] = event.penalty_factor * e.time
        else
          temp_times[e.user.kk_number] = e.time
        end
      end
    elsif event.sport_type == 'SkiingEvent'
      enrollments.each do |e|
        attr = e.event_attributes.find_by name: 'Tyyli'
        if attr.value == 'Vapaa'
          temp_times[e.user.kk_number] = event.penalty_factor * e.time
        else
          temp_times[e.user.kk_number] = e.time
        end
      end
    else
      enrollments.each do |e|
        temp_times[e.user.kk_number] = e.time
      end
    end
    temp_times
  end

  def unscaled_times(event)
    enrollments = event.enrollments
    temp_times = {}
    enrollments.each do |e|
      temp_times[e.user.kk_number] = e.time
    end
  end

  def calculate_points
    event = Event.find_by id: params[:event_id]
    times = scale_times(event)
    normal_times = unscaled_times(event)
    times_sorted = Hash[times.sort_by { |k, v| v }]
    winner_time = times_sorted.first.last
    position = 1
    year = event.second_end_date.year
    times_sorted.each do |number, time|
      if time
        res = Result.find_by_kk_number_and_year(number, year)
        points = 1000 - event.factor * Math.log10(time / winner_time)
        insert_points(event.sport_type, res, points)
        insert_position(event.sport_type, res, position)
        position += 1
        insert_time(event.sport_type, res, normal_times[number])
      end
    end
    redirect_to :root
  end

  def insert_points(sport_type, result, points)
    if sport_type == "RunningEvent"
      result.update_attribute :running_pts, points
    elsif sport_type == "SkiingEvent"
      result.update_attribute :skiing_pts, points
    elsif sport_type == "SkatingEvent"
      result.update_attribute :skating_pts, points
    elsif sport_type == "CyclingEvent"
      result.update_attribute :cycling_pts, points
    elsif sport_type == "OrienteeringEvent"
      result.update_attribute :orienteering_pts, points
    elsif sport_type == "RowingEvent"
      result.update_attribute :rowing_pts, points
    end
  end

  def insert_time(sport_type, result, time)
    if sport_type == "RunningEvent"
      result.update_attribute :running_time, time
    elsif sport_type == "SkiingEvent"
      result.update_attribute :skiing_time, time
    elsif sport_type == "SkatingEvent"
      result.update_attribute :skating_time, time
    elsif sport_type == "CyclingEvent"
      result.update_attribute :cycling_time, time
    elsif sport_type == "OrienteeringEvent"
      result.update_attribute :orienteering_time, time
    elsif sport_type == "RowingEvent"
      result.update_attribute :rowing_time, time
    end
  end

  def insert_position(sport_type, result, position)
    if sport_type == "RunningEvent"
      result.update_attribute :running_pos, position
    elsif sport_type == "SkiingEvent"
      result.update_attribute :skiing_pos, position
    elsif sport_type == "SkatingEvent"
      result.update_attribute :skating_pos, position
    elsif sport_type == "CyclingEvent"
      result.update_attribute :cycling_pos, position
    elsif sport_type == "OrienteeringEvent"
      result.update_attribute :orienteering_pos, position
    elsif sport_type == "RowingEvent"
      result.update_attribute :rowing_pos, position
    end
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
