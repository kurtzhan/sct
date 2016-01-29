json.array!(@materials) do |material|
  json.extract! material, :id, :name, :description
  json.url material_url(material, format: :json)
end
