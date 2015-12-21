json.array!(@abouts) do |about|
  json.extract! about, :id, :title, :text
  json.url about_url(about, format: :json)
end
