json.extract! playlist_content, :id, :playlist_id, :content, :created_at, :updated_at, :col, :row
json.url playlist_content_url(playlist_content, format: :json)
