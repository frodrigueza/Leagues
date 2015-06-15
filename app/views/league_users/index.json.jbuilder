json.array!(@league_users) do |league_user|
  json.extract! league_user, :id, :user_id, :league_id, :role
  json.url league_user_url(league_user, format: :json)
end
