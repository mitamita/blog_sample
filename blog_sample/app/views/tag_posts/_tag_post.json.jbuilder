json.extract! tag_post, :id, :post_id, :tag_id, :created_at, :updated_at
json.url tag_post_url(tag_post, format: :json)
