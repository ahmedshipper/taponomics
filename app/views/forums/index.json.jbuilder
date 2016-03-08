json.array!(@forums) do |forum|
  json.extract! forum, :id, :question, :answer
  json.url forum_url(forum, format: :json)
end
