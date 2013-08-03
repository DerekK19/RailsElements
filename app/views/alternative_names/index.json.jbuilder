json.array!(@alternative_names) do |alternative_name|
  json.extract! alternative_name, :name
  json.url alternative_name_url(alternative_name, format: :json)
end
