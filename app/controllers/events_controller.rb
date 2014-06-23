class EventsController < ApplicationController
  before_action :set_event_or_redirect, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, except: [:show, :index]

  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/1
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, flash: { success: 'Tapahtuma luotu onnistuneesti.' }
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, flash: { success: 'Tapahtumaa muokattu onnistuneesti.' }
    else
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_url, flash: { success: 'Tapahtuma poistettiin onnistuneesti.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_or_redirect
      @event = Event.find_by id: params[:id]
      return if @event

      redirect_to :root
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_date, :end_date, :description)
    end
end
