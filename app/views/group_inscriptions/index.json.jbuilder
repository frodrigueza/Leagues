json.array!(@group_inscriptions) do |group_inscription|
  json.extract! group_inscription, :id, :group_id, :inscription_id
  json.url group_inscription_url(group_inscription, format: :json)
end
