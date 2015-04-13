json.array!(@pitch_events) do |pitch_event|
  json.extract! pitch_event,
                :id,
                :event_name,
                :address_1,
                :address_2,
                :city,
                :state,
                :zip,
                :event_start,
                :event_end

 json.url pitch_event_url(pitch_event, format: :json)
end
