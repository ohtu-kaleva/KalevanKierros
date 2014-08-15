class StatisticsController < ApplicationController

  # GET /statistics
  def index
    @statistics = Statistic.all
  end

  # GET /statistics/1
  def show
    @statistic = Statistic.find_by id: params[:id]
    if !@statistic
      redirect_to :root
    end
  end

  def join
    @user = User.find_by id: params[:id]
    if !@user
      redirect_to :root
    end

    @current_statistic = @user.statistic
    @potential_statistics = Statistic.where 'statistics.user_id IS NULL'

    first_name = @user.first_name.strip.downcase
    last_name = @user.last_name.strip.downcase
    @potential_statistics = @potential_statistics.select do |u|
      u.first_name.strip.downcase.eql?(first_name) && u.last_name.strip.downcase.eql?(last_name)
    end
  end

  def join_user_to_existing_statistic
    @user = User.find_by id: params[:id]
    @statistic = Statistic.find_by kk_number: params[:kk_number]

    if @user && @statistic
      @user.statistic.destroy unless @user.statistic.nil?
      @user.update_attribute :statistic, @statistic

      redirect_to users_path, flash: { success: 'Käyttäjä liitetty tilastoon.' }
    else
      redirect_to :root
    end
  end

  # GET /statistics/1/edit
  def edit
  end
end
