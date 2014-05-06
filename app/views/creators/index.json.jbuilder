json.array!(@creators) do |creator|
  json.extract! creator, :id, :username, :email, :phone
  json.url creator_url(creator, format: :json)
end
