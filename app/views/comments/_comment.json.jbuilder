json.extract! comment, :id, :author, :blog_post, :text, :date, :created_at, :updated_at
json.url comment_url(comment, format: :json)
