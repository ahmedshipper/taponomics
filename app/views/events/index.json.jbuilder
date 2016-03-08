json.array!(@events) do |event|
  json.extract! event, :id, :tittle, :date, :address
  json.url event_url(event, format: :json)
end
