json.array!(@versions) do |version|
  json.extract! version, :id, :name, :cup_id
  json.url version_url(version, format: :json)
end
