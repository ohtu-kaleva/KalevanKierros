class StatisticsController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:join, :join_user_to_existing_statistic]

  # GET /statistics
  def index
#    @statistics = Statistic.all.paginate(page: params[:page], per_page: 50)
    @statistics = Statistic.all
  end

  # GET /statistics/1
  # GET /statistics/1.json
  def show
    @statistic = Statistic.find_by id: params[:id]

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
    @potential_statistics = @potential_statistics.select do |u|
      u.first_name.strip.downcase.eql?(first_name) && u.last_name.strip.downcase.eql?(last_name)
    end

    @potential_statistic = @potential_statistics.first
  end

  def join_user_to_existing_statistic
    @user = User.find_by id: params[:id]
    @statistic = Statistic.find_by id: params[:statistic_id]

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
end
