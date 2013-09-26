json.array!(@images) do |image|
  json.extract! image, :title, :description, :url, :page_id, :gallery_id, :post_id
  json.url image_url(image, format: :json)
end
