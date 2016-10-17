class StatisticsController < ApplicationController
  before_action :set_statistic_or_redirect, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, only: [:join, :join_user_to_existing_statistic, :edit, :update, :destroy,
                                                    :update_statistics]
  after_action :recalculate_positions, only: [:join_user_to_existing_statistic, :update, :destroy, :update_statistics]

  # GET /statistics
  def index

  end

  # GET /statistics/static
  def index_static
    if params[:sort] == 'name'
      @statistics = Statistic.where('total_events_completed > 0').order('last_name', 'first_name').paginate(page: params[:page], per_page: 100)
    else
      @statistics = Statistic.where('total_events_completed > 0').order('position').paginate(page: params[:page], per_page: 100)
    end
  end

  # GET /statistics/search
  def index_filterable
    @statistics = Statistic.where('total_events_completed > 0').order('position')
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
    @user = User.find_by id: params[:id]
    if !@user
      redirect_to :root && return
    end

    @current_statistic = @user.statistic
    @potential_statistics = Statistic.where 'statistics.user_id IS NULL'

    first_name = @user.first_name.strip.downcase
    last_name = @user.last_name.strip.downcase
    birth_year = @current_statistic.birth_year
    @potential_statistics = @potential_statistics.select do |u|
      u.first_name.strip.downcase.eql?(first_name) && u.last_name.strip.downcase.eql?(last_name) && u.birth_year == birth_year
    end

    @potential_statistic = @potential_statistics.first
  end

  def join_user_to_existing_statistic
    @user = User.find_by id: params[:id]
    @statistic = Statistic.find_by id: params[:statistic_id]

    if @user && @statistic
      @user.statistic.destroy unless @user.statistic.nil?
      @user.update_attribute :statistic, @statistic
      @statistic.update_attribute :kk_number, @user.kk_number

      redirect_to users_path, flash: { success: 'Käyttäjä liitetty tilastoon.' }
    else
      redirect_to users_path, flash: { error: 'Käyttäjän liittäminen tilastoon ei onnistunut' }
    end
  end

  # GET /statistics/1/edit
  def edit
  end

  # PATCH/PUT /statistics/1
  def update
    if @statistic.update(statistic_params)
      redirect_to statistics_filterable_url, flash: { success: 'Tilastomerkintää muokattu onnistuneesti.' }
    else
      render :edit
    end
  end

  # DELETE /statistics/1
  def destroy
    if not @statistic.user_id
       redirect_to statistics_filterable_url, flash: { error: 'Tilastomerkintä on luotu ennen vuotta 2015 eikä sitä voi poistaa.' } 
    elsif User.exists? @statistic.user_id
      redirect_to statistics_filterable_url, flash: { error: 'Tilastomerkintään on liitetty käyttäjä. Poista käyttäjä ennen tilastomerkintää.' }  
    else
      @statistic.destroy
      redirect_to statistics_filterable_url, flash: { success: 'Tilastomerkintä poistettiin onnistuneesti.' }
    end
  end

  def update_statistics
    message = {}
    unless params[:year] =~ /\A\d{4}\z/
      redirect_to :root and return
    end

    last_year_statistics = Statistic.where("prev_year_event_sum > ? or prev_year_pts_sum > ?", 0, 0)
    last_year_statistics.each do |s|
      s.prev_year_event_sum = 0
      s.prev_year_pts_sum = 0
      s.save
    end

    @results = Result.where(year: params[:year])

    if !@results.empty?
      if @results.any? { |r| r.orienteering_pts }
        @results.each do |result|
          if !result.updated_to_statistics and result.completed_events >= 4
            @statistic = Statistic.find_by_kk_number result.kk_number

            if @statistic
              if result.completed_events == 4
                @statistic.four_events_completed_count += 1
                @statistic.prev_year_event_sum = 4
              elsif result.completed_events == 5
                @statistic.five_events_completed_count += 1
                @statistic.prev_year_event_sum = 5
              elsif result.completed_events == 6
                @statistic.six_events_completed_count += 1
                @statistic.prev_year_event_sum = 6
              end
 
              @statistic.total_events_completed += result.completed_events
              @statistic.pts_sum += result.pts_sum
              @statistic.prev_year_pts_sum = result.pts_sum
              @statistic.save
              result.update_attribute :updated_to_statistics, true
            end
          end
        end

        message[:success] = 'Tilastot päivitetty onnistuneesti.'
      else
        message[:error] = 'Suunnistuksen pisteitä ei ole vielä laskettu.'
      end
    else
      message[:error] = 'Tilastojen päivitys ei onnistunut.'
    end

    redirect_to root_path, flash: message
  end

  private

  def recalculate_positions
    @statistics = Statistic.all.order('total_events_completed desc').order('pts_sum desc')
    i = 1
    @statistics.each do |s|
      s.position = i
      s.save
      i += 1
    end
  end

  def set_statistic_or_redirect
      @statistic = Statistic.find_by id: params[:id]
      return if @statistic

      redirect_to :root
    end

  def statistic_params
    params.require(:statistic).permit(:year, :page, :id, :statistic_id, :kk_number, :last_name, :first_name, :city, :birth_year, :six_events_completed_count, :five_events_completed_count, :four_events_completed_count, :total_events_completed, :pts_sum, :position, :p, :a, :ap, :k, :v, :prev_year_pts_sum, :prev_year_event_sum)
  end
end