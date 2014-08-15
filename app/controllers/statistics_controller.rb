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

  def join_user_to_existing_statistic
    @user = User.find_by id: params[:user_id]
    @statistic = Statistic.find_by params[:statistic_id]

    if @user && @statistic
      @user.statistic.destroy unless @user.statistic.nil?

      @user.statistic = @statistic
      if @user.save
        redirect_to :index, flash[:success] = 'Käyttäjä liitetty tilastoon'
      else
        redirect_to :back, flash[:error] = 'Käyttäjän liittäminen tilastoon ei onnistunut'
      end
    else
      redirect_to :root
    end
  end

  # GET /statistics/1/edit
  def edit
  end
end
