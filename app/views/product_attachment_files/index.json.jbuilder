json.array!(@product_attachment_files) do |product_attachment_file|
  json.extract! product_attachment_file, :id, :product_id, :attachment_file_id
  json.url product_attachment_file_url(product_attachment_file, format: :json)
end
