json.array!(@news) do |news|
  json.extract! news, :id, :name, :description, :slug
  json.url news_url(news, format: :json)
end
