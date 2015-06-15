json.array!(@games) do |game|
  json.extract! game, :id, :round_id, :local_team_id, :away_team_id, :player_of_the_match_id
  json.url game_url(game, format: :json)
end
