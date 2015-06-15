json.array!(@teams) do |team|
  json.extract! team, :id, :memberships, :inscriptions
  json.url team_url(team, format: :json)
end
