json.array!(@pitch_events) do |pitch_event|
  json.extract! pitch_event,
                :id,
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
                :industry

 json.url pitch_event_url(pitch_event, format: :json)
end
