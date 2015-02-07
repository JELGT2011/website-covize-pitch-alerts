json.array!(@pitch_events) do |pitch_event|
  json.extract! pitch_event, :id, :title, :host, :description, :image
  json.url pitch_event_url(pitch_event, format: :json)
end
