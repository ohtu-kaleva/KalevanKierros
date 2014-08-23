class StatisticsController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:join, :join_user_to_existing_statistic,
                                                    :update_statistics]

  # GET /statistics
  def index

  end

  # GET /statistics/static
  def index_static
    if params[:sort] == 'points'
      @statistics = Statistic.all.order('total_events_completed desc').paginate(page: statistic_params[:page], per_page: 100)
    else
      @statistics = Statistic.all.paginate(page: statistic_params[:page], per_page: 100)
    end
  end

  # GET /statistics/search
  def index_filterable
    @statistics = Statistic.all
  end
  # GET /statistics/1
  # GET /statistics/1.json
  def show
    @statistic = Statistic.find_by id: statistic_params[:id]

    respond_to do |format|
      if @statistic
        format.html { render :show }
        format.json { render json: @statistic }
      else
        format.html { redirect_to :root }
        format.json { render json: nil}
      end
    end
  end

  def join
    @user = User.find_by id: statistic_params[:id]
    if !@user
      redirect_to :root && return
    end

    @current_statistic = @user.statistic
    @potential_statistics = Statistic.where 'statistics.user_id IS NULL'

    first_name = @user.first_name.strip.downcase
    last_name = @user.last_name.strip.downcase
    @potential_statistics = @potential_statistics.select do |u|
      u.first_name.strip.downcase.eql?(first_name) && u.last_name.strip.downcase.eql?(last_name)
    end

    @potential_statistic = @potential_statistics.first
  end

  def join_user_to_existing_statistic
    @user = User.find_by id: statistic_params[:id]
    @statistic = Statistic.find_by id: statistic_params[:statistic_id]

    if @user && @statistic
      @user.statistic.destroy unless @user.statistic.nil?
      @user.update_attribute :statistic, @statistic

      redirect_to users_path, flash: { success: 'Käyttäjä liitetty tilastoon.' }
    else
      redirect_to users_path, flash: { error: 'Käyttäjän liittäminen tilastoon ei onnistunut' }
    end
  end

  # GET /statistics/1/edit
  def edit
  end

  def update_statistics
    message = {}
    @results = Result.where(year: statistic_params[:year])

    if !@results.empty?
      if @results.any? { |r| r.orienteering_pts }
        @results.each do |result|
          @statistic = Statistic.find_by_kk_number result.kk_number

          if @statistic
            if result.completed_events == 4
              @statistic.four_events_completed_count += 1
            elsif result.completed_events == 5
              @statistic.five_events_completed_count += 1
            elsif result.completed_events == 6
              @statistic.six_events_completed_count += 1
            end

            @statistic.total_events_completed += result.completed_events
            @statistic.pts_sum += result.pts_sum
            @statistic.save
          end
        end

        message[:success] = 'Tilastot päivitetty onnistuneesti.'
      else
        message[:error] = 'Suunnistuksen pisteitä ei ole vielä laskettu.'
      end
    else
      message[:error] = 'Tilastojen päivitys ei onnistunut.'
    end

    redirect_to statistics_static_path, flash: message
  end

  private

  def statistic_params
    params.permit(:year, :page, :id, :statistic_id, :year)
  end
end
