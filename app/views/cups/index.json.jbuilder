json.array!(@cups) do |cup|
  json.extract! cup, :id, :name, :league_id
  json.url cup_url(cup, format: :json)
end
