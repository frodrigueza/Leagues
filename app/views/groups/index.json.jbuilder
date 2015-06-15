json.array!(@groups) do |group|
  json.extract! group, :id, :stage_id, :name, :order
  json.url group_url(group, format: :json)
end
