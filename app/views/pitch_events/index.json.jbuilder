json.array!(@pitch_events) do |pitch_event|
  json.extract! pitch_event, :id, :event_name, :org_name, :city, :state, :event_start, :event_end, :registration_deadline, :detail_link, :contact_name, :contact_number, :contact_email, :location, :woman, :ethnic, :industry
  json.url pitch_event_url(pitch_event, format: :json)
end
