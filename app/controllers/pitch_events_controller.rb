class PitchEventsController < ApplicationController
  before_action :set_pitch_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index]

  # GET /pitch_events
  # GET /pitch_events.json
  def index

    @pitch_events = PitchEvent.all

    # the public_send behavior is defined in the model using scopes
    filtering_params(params).each do |key, value|
      if value.present?
        @pitch_events = @pitch_events.public_send(key, value)
      end
    end

    # default sort order to event start attribute
    @pitch_events = @pitch_events.sort_by { |pitch_event| pitch_event.event_start }

    # whitelist sorting params
    # it's kind of a hack but I couldn't find a better way
    if params[:sort_order].present?

      case params[:sort_order]

      when 'event_name'
        @pitch_events = @pitch_events.sort_by { |pitch_event| pitch_event.event_name }
      when 'event_start'
        @pitch_events = @pitch_events.sort_by { |pitch_event| pitch_event.event_start }
      when 'event_end'
        @pitch_events = @pitch_events.sort_by { |pitch_event| pitch_event.event_end }
      when 'registration_deadline'
        @pitch_events = @pitch_events.sort_by { |pitch_event| pitch_event.registration_deadline }
      end
    end

=begin
    if params[:within].present? and params[:user_location].present?
      @pitch_events = PitchEvent.near(params[:user_location], params[:within].to_i)
    end
=end

    if params[:limit].present?
      @pitch_events = @pitch_events[0, params[:limit].to_i]
    end

  end

  # GET /pitch_events/1
  # GET /pitch_events/1.json
  def show
  end

  # GET /pitch_events/new
  def new
    @pitch_event = PitchEvent.new
  end

  # GET /pitch_events/1/edit
  def edit
  end

  # POST /pitch_events
  # POST /pitch_events.json
  def create
    @pitch_event = PitchEvent.new(pitch_event_params)

    respond_to do |format|
      if @pitch_event.save
        format.html { redirect_to @pitch_event, notice: 'Pitch event was successfully created.' }
        format.json { render :show, status: :created, location: @pitch_event }
      else
        format.html { render :new }
        format.json { render json: @pitch_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pitch_events/1
  # PATCH/PUT /pitch_events/1.json
  def update
    respond_to do |format|
      if @pitch_event.update(pitch_event_params)
        format.html { redirect_to @pitch_event, notice: 'Pitch event was successfully updated.' }
        format.json { render :show, status: :ok, location: @pitch_event }
      else
        format.html { render :edit }
        format.json { render json: @pitch_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitch_events/1
  # DELETE /pitch_events/1.json
  def destroy
    @pitch_event.destroy
    respond_to do |format|
      format.html { redirect_to pitch_events_url, notice: 'Pitch event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pitch_event
    @pitch_event = PitchEvent.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pitch_event_params
    params.require(:pitch_event).permit(
        :event_name,
        :org_name,
        :photo,
        :address_1,
        :address_2,
        :city,
        :state,
        :zip,
        :event_start,
        :event_end,
        :registration_deadline,
        :registration_link,
        :detail_link,
        :contact_name,
        :contact_number,
        :contact_email,
        :local,
        :national,
        :female_founder,
        :ethnic_founder,
        :industry,
        :latitude,
        :longitude
    )
  end

  def filtering_params(params)
    params.slice(
              :local,
              :national,
              :female_founder,
              :ethnic_founder,
              :starting_index,
              :ending_index,
              :limit
    )
  end
end
