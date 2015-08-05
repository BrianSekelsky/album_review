json.array!(@albums) do |album|
  json.extract! album, :id, :title, :description, :artist, :year
  json.url album_url(album, format: :json)
end
