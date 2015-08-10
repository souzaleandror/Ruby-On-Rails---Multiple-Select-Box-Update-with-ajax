json.array!(@cities) do |city|
  json.extract! city, :id, :state_id, :name, :obs, :active
  json.url city_url(city, format: :json)
end
