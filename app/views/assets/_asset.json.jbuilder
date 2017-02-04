json.extract! asset, :id, :title, :description, :thumbnail_url, :created_at, :updated_at
json.url asset_url(asset, format: :json)