json.array!(@event_attributes) do |event_attribute|
  json.extract! event_attribute, :id
  json.url event_attribute_url(event_attribute, format: :json)
end
