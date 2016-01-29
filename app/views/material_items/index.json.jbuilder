json.array!(@material_items) do |material_item|
  json.extract! material_item, :id, :name, :material_id, :description
  json.url material_item_url(material_item, format: :json)
end
