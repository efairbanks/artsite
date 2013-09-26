json.array!(@pages) do |page|
  json.extract! page, :title, :body, :root_page, :page_id
  json.url page_url(page, format: :json)
end
