json.array!(@elements) do |element|
  json.extract! element, :atomic_number, :name, :symbol, :atomic_group, :period, :atomic_mass, :isotope_number, :boiling_point, :melting_point, :series_id
  json.url element_url(element, format: :json)
end
