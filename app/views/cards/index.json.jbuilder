json.array!(@cards) do |card|
  json.extract! card, :id, :game_id, :user_id, :card_type
  json.url card_url(card, format: :json)
end
