json.array!(@tributes) do |tribute|
  json.extract! tribute, :id, :title, :url
  json.url tribute_url(tribute, format: :json)
end
