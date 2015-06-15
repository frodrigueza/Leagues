json.array!(@inscriptions) do |inscription|
  json.extract! inscription, :id, :version_id, :team_id
  json.url inscription_url(inscription, format: :json)
end
