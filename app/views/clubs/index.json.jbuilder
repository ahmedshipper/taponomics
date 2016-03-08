json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :address, :services, :charges, :review
  json.url club_url(club, format: :json)
end
