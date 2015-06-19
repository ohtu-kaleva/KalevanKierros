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
    if check_for_valid_decimal(event_params[:penalty_factor])
      event_params[:penalty_factor] = (event_params[:penalty_factor].sub! ',', '.').to_f
    else
      event_params[:penalty_factor] = 1.0
    end
    if check_for_valid_decimal(event_params[:rowing_penalty])
      event_params[:rowing_penalty] = (event_params[:rowing_penalty].sub! ',', '.').to_f
    else
      event_params[:rowing_penalty] = 12.0
    end
    if event_params[:sport_type].empty?
    @event = Event.new(event_params)

      if @event.save
        redirect_to @event, flash: { success: 'Tapahtuma luotu onnistuneesti.' }
      else
        render :new
      end

    elsif event_params[:sport_type] == 'RunningEvent'
      @event = Event.new(event_params)
      @event.factor = 2000
      if @event.save
        EventAttribute.create :name => 'Tyyppi', :attribute_value => 'maraton;puolimaraton', :attribute_label => 'Valitse maraton tai puolimaraton', :attribute_type => 'radio_button', :event_id => @event.id, :attribute_index => 1
        redirect_to @event, flash: { success: 'Juoksutapahtuma luotu onnistuneesti.' }
      else
        render :new
      end
    elsif event_params[:sport_type] == 'RowingEvent'
      @event = Event.new(event_params)
      @event.factor = 3500
      if @event.save
        EventAttribute.create :name => 'Melonta', :attribute_value => 'Soutu;Melonta', :attribute_label => 'Soutu/melonta', :attribute_type => 'select', :event_id => @event.id, :attribute_index => 1
        EventAttribute.create :name => 'Tyyli', :attribute_value => 'Yksin;Vuoro', :attribute_label => 'Valitse soudatko yksin- tai vuorosoudun.', :attribute_type => 'select', :event_id => @event.id, :attribute_index => 2
        EventAttribute.create :name => 'Parin nimi', :attribute_value => '', :attribute_label => 'Jos soudat parin kanssa, kirjoita hänen nimensä tekstikenttään.', :attribute_type => 'text_field', :event_id => @event.id, :attribute_index => 3
        EventAttribute.create :name => 'Parin sukupuoli', :attribute_value => 'M;F', :attribute_label => 'Parisi sukupuoli.', :attribute_type => 'select', :event_id => @event.id, :attribute_index => 4
        EventAttribute.create :name => 'Parin syntymävuosi', :attribute_value => '', :attribute_label => 'Parisi syntymävuosi', :attribute_type => 'text_field', :event_id => @event.id, :attribute_index => 5
        EventAttribute.create :name => 'Onko pari kiertäjä', :attribute_value => 'Ei;Kyllä', :attribute_label => 'Onko parisi kiertäjä?', :attribute_type => 'select', :event_id => @event.id, :attribute_index => 6
        EventAttribute.create :name => 'kk_numero', :attribute_value => '', :attribute_label => 'Jos parisi on kiertäjä, kirjoita hänen kk-numeronsa', :attribute_type => 'text_field', :event_id => @event.id, :attribute_index => 7
        EventAttribute.create :name => 'Venekunta', :attribute_value => '', :attribute_label => 'Venekunta', :attribute_type => 'hidden', :event_id => @event.id, :attribute_index => 8
        redirect_to @event, flash: { success: 'Soututapahtuma luotu onnistuneesti.' }
      else
        render :new
      end
    elsif event_params[:sport_type] == 'SkatingEvent'
      @event = Event.new(event_params)
      @event.factor = 2800
      if @event.save
        EventAttribute.create :name => 'Kierroslaskija', :attribute_value => 'Kyllä', :attribute_label => 'Tarvitsetko kierroslaskijan järjestäjän puolesta?', :attribute_type => 'check_box', :event_id => @event.id, :attribute_index => 1
        redirect_to @event, flash: { success: 'Luistelutapahtuma luotu onnistuneesti.' }
      else
        render :new
      end
    elsif event_params[:sport_type] == 'SkiingEvent'
      @event = Event.new(event_params)
      @event.factor = 2000
      if @event.save
        EventAttribute.create :name => 'Tyyli', :attribute_value => 'Vapaa;Perinteinen', :attribute_label => 'Valitse vapaa tai perinteinen tyyli.', :attribute_type => 'radio_button', :event_id => @event.id, :attribute_index => 1
        redirect_to @event, flash: { success: 'Hiihtotapahtuma luotu onnistuneesti' }
      else
        render :new
      end
    elsif event_params[:sport_type] == 'CyclingEvent'
      @event = Event.new(event_params)
      @event.factor = 2800
      if @event.save
        redirect_to @event, flash: { success: 'Pyöräilytapahtuma luotu onnistuneesti' }
      else
        render :new
      end
    elsif event_params[:sport_type] == 'OrienteeringEvent'
      @event = Event.new(event_params)
      @event.factor = 1300
      if @event.save
        EventAttribute.create :name => 'Emit', :attribute_value => 'Kyllä', :attribute_label => 'Tarvitsetko emit-lähettimen järjestäjän puolesta?', :attribute_type => 'check_box', :event_id => @event.id, :attribute_index => 1
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
  def check_for_valid_decimal(decimal_param)
    /\d{1,2},\d{1,2}/ === decimal_param
  end

    def set_event_or_redirect
      @event = Event.find_by id: params[:id]
      return if @event

      redirect_to :root
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_date, :end_date, :second_end_date, :price, :second_price, :description, :open, :penalty_factor, :sport_type, :rowing_penalty, :account_number, :payment_receiver)
    end
end
