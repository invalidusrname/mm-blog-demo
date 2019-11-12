json.extract! blog, :id, :title, :text, :images, :published_at, :publish, :created_at, :updated_at
json.url blog_url(blog, format: :json)
