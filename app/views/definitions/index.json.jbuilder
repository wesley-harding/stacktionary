json.array!(@definitions) do |definition|
  json.extract! definition, :id, :user_id, :definition
  json.url definition_url(definition, format: :json)
end
