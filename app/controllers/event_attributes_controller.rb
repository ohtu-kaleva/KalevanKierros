class EventAttributesController < ApplicationController
  before_action :redirect_if_user_not_admin
  before_action :set_event_attribute_or_redirect, only: [:show, :edit, :update, :destroy]
  before_action :set_attribute_types, only: [:new, :edit]

  # GET /event_attributes
  def index
    @event_attributes = EventAttribute.all
  end

  # GET /event_attributes/1
  def show
  end

  # GET /event_attributes/new
  def new
    @event_attribute = EventAttribute.new
  end

  # GET /event_attributes/1/edit
  def edit
  end

  # POST /event_attributes
  def create
    @event_attribute = EventAttribute.new(event_attribute_params)
    if event_attribute_params[:attribute_type] == 'plain_text'
      @event_attribute = nil
    else
      @event_attribute.attribute_index = EventAttribute.where(event_id: event_attribute_params[:event_id]).count + 1
    end

    if @event_attribute.save
      redirect_to @event_attribute.event, flash: { success: 'Valinta lisättiin onnistuneesti.' }
    else
      set_attribute_types
      params[:event_id] = event_attribute_params[:event_id]
      render :new
    end
  end

  # PATCH/PUT /event_attributes/1
  def update
    if @event_attribute.update(event_attribute_params)
      redirect_to @event_attribute, flash: { success: 'Valinta päivitettiin onnistuneesti.' }
    else
      render :edit
    end
  end

  # DELETE /event_attributes/1
  def destroy
    @event_attribute.destroy
    redirect_to event_attributes_url, flash: { success: 'Valinta poistettiin onniistuneesti.' }
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_event_attribute_or_redirect
      @event_attribute = EventAttribute.find_by id: params[:id]
      return if @event_attribute

      redirect_to :root
    end

    def set_attribute_types
      @attribute_types = [['Valintanappi', 'radio_button'], ['Valintalaatikko', 'check_box'], ['Tekstikenttä', 'text_field'], ['Pudotusvalikko', 'select'],
                          ['Tekstilaatikko', 'plain_text']]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_attribute_params
      params.require(:event_attribute).permit(:event_id, :attribute_type, :attribute_value, :attribute_label, :name)
    end
end
