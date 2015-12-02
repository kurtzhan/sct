json.array!(@category_pictures) do |category_picture|
  json.extract! category_picture, :id, :category_id, :picture_id
  json.url category_picture_url(category_picture, format: :json)
end
