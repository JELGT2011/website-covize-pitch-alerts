json.array!(@pitch_events) do |pitch_event|
  json.extract! pitch_event, :id, :event_name, :org_name, :address_1, :address_2, :city, :state, :zip, :event_start, :event_end, :registration_deadline, :detail_link, :contact_name, :contact_number, :contact_email, :woman, :ethnic, :industry, :latitude, :longitude
  json.url pitch_event_url(pitch_event, format: :json)
end
