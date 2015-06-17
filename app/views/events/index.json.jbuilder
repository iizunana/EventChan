json.array!(@events) do |event|
  json.extract! event, :id, :eventName, :eventDate, :eventPlace, :eventComment
  json.url event_url(event, format: :json)
end
