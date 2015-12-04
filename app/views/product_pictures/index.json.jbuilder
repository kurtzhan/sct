json.array!(@product_pictures) do |product_picture|
  json.extract! product_picture, :id, :product_id, :picture_id
  json.url product_picture_url(product_picture, format: :json)
end
