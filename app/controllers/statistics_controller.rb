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

  # GET /statistics/1/edit
  def edit
  end
end
