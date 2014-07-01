class EventsController < ApplicationController
  before_action :set_event_or_redirect, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, except: [:show, :index]
  before_action :event_types, only: [:new]

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
    puts params
    if params[:event][:type].nil?
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, flash: { success: 'Tapahtuma luotu onnistuneesti.' }
    else
      render :new
    end

    elsif params[:event][:type] == 'RunningEvent'
      @event = RunningEvent.new(event_params)
      if @event.save
        EventAttribute.create :name => 'Tyyppi', :attribute_value => 'maraton;puolimaraton', :attribute_label => 'Valitse maraton tai puolimaraton', :attribute_type => 'radio_button', :event_id => @event.id
        redirect_to @event, flash: { successs: 'Juoksutapahtuma luotu onnistuneesti.' }
      else
        render :new
      end
    elsif params[:event][:type] == 'RowingEvent'
      @event = RowingEvent.new(event_params)
      if @event.save
        EventAttribute.create :name => 'Pari', :attribute_value => 'Jos sinulla on pari, niin hänen täytyy olla rekisteröitynyt käyttäjä.', :attribute_label => 'Pari-informaatio.', :attribute_type => 'plain_text', :event_id => @event.id
        EventAttribute.create :name => 'Melonta', :attribute_value => 'Soutu;Melonta', :attribute_label => 'Soutu/melonta', :attribute_type => 'select', :event_id => @event.id
        EventAttribute.create :name => 'Parin nimi', :attribute_value => 'Parisoudussa parisi nimi.', :attribute_label => 'Jos soudat parin kanssa, kirjoita hänen nimensä tekstikenttään.', :attribute_type => 'text_field', :event_id => @event.id
        redirect_to @event, flash: { success: 'Soututapahtuma luotu onnistuneesti.' }
      else
        render :new
      end
    elsif params[:event][:type] == 'SkatingEvent'
      @event = SkatingEvent.new(event_params)
      if @event.save
        EventAttribute.create :name => 'Kierroslaskija', :attribute_value => 'Kyllä', :attribute_label => 'Onko sinulla kierroslaskija?', :attribute_type => 'check_box', :event_id => @event.id
        redirect_to @event, flash: { success: 'Luistelutapahtuma luotu onnistuneesti.' }
      else
        render :new
      end
    elsif params[:event][:type] == 'SkiingEvent'
      @event = SkiingEvent.new(event_params)
      if @event.save
        EventAttribute.create :name => 'Tyyli', :attribute_value => 'Vapaa;Perinteinen', :attribute_label => 'Valitse vapaa tai perinteinen tyyli.', :attribute_type => 'radio_button', :event_id => @event.id
        redirect_to @event, flash: { success: 'Hiihtotapahtuma luotu onnistuneesti' }
      else
        render :new
      end
    elsif params[:event][:type] == 'CyclingEvent'
      @event = CyclingEvent.new(event_params)
      if @event.save
        redirect_to @event, flash: { success: 'Pyöräilytapahtuma luotu onnistuneesti' }
      else
        render :new
      end
    elsif params[:event][:type] == 'OrienteeringEvent'
      @event = OrienteeringEvent.new(event_params)
      if @event.save
        redirect_to @event, flash: { success: 'Suunnistustapahtuma luotu onnistuneesti' }
      else
        render :new
      end
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
      params.require(:event).permit(:name, :start_date, :end_date, :description, :open)
    end

    def event_types
      @event_types = [['Tyhjä', nil],['Juoksu', 'RunningEvent'], ['Soutu', 'RowingEvent'], ['Hiihto', 'SkiingEvent'], ['Suunnistus', 'OrienteeringEvent'], ['Luistelu', 'SkatingEvent'], ['Pyöräily', 'CyclingEvent']]
    end
end
