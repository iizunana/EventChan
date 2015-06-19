json.array!(@join_events) do |join_event|
  json.extract! join_event, :id, :userid, :eventid, :status, :comment
  json.url join_event_url(join_event, format: :json)
end
