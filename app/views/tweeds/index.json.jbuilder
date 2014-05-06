json.array!(@tweeds) do |tweed|
  json.extract! tweed, :id, :creator_id, :content
  json.url tweed_url(tweed, format: :json)
end
