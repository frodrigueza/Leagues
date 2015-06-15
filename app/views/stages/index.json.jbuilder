json.array!(@stages) do |stage|
  json.extract! stage, :id, :name, :version_id
  json.url stage_url(stage, format: :json)
end
