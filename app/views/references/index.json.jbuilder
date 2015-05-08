json.array!(@references) do |reference|
  json.extract! reference, :id, :user_id, :source
  json.url reference_url(reference, format: :json)
end
