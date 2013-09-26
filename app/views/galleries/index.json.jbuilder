json.array!(@galleries) do |gallery|
  json.extract! gallery, :title, :description, :image_id, :page_id
  json.url gallery_url(gallery, format: :json)
end
