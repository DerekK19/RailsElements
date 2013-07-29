json.array!(@series) do |series|
  json.extract! series, :string
  json.url series_url(series, format: :json)
end
