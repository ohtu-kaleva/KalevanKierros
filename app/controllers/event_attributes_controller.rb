class EventAttributesController < ApplicationController
  before_action :set_event_attribute, only: [:show, :edit, :update, :destroy]

  # GET /event_attributes
  # GET /event_attributes.json
  def index
    @event_attributes = EventAttribute.all
  end

  # GET /event_attributes/1
  # GET /event_attributes/1.json
  def show
  end

  # GET /event_attributes/new
  def new
    @event_attribute = EventAttribute.new
    @attribute_values = ['radio_button', 'check_box', 'text_field', 'select', 'plain_text']
  end

  # GET /event_attributes/1/edit
  def edit
  end

  # POST /event_attributes
  # POST /event_attributes.json
  def create
    @event_attribute = EventAttribute.new(event_attribute_params)

    respond_to do |format|
      if @event_attribute.save
        format.html { redirect_to @event_attribute.event, notice: 'Event attribute was successfully created.' }
        format.json { render :show, status: :created, location: @event_attribute }
      else
        format.html { render :new }
        format.json { render json: @event_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_attributes/1
  # PATCH/PUT /event_attributes/1.json
  def update
    respond_to do |format|
      if @event_attribute.update(event_attribute_params)
        format.html { redirect_to @event_attribute, notice: 'Event attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_attribute }
      else
        format.html { render :edit }
        format.json { render json: @event_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_attributes/1
  # DELETE /event_attributes/1.json
  def destroy
    @event_attribute.destroy
    respond_to do |format|
      format.html { redirect_to event_attributes_url, notice: 'Event attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_options_to_form(values)
    values.spl
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_attribute
      @event_attribute = EventAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_attribute_params
      params.require(:event_attribute).permit(:event_id, :attributetype, :attribute_value)
    end
end
