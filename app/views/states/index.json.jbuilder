json.array!(@states) do |state|
  json.extract! state, :id, :name, :acronym, :capital, :obs, :active
  json.url state_url(state, format: :json)
end
