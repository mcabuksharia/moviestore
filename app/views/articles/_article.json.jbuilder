json.extract! article, :id, :category_id, :name, :article_type, :author, :created_at, :updated_at
json.url article_url(article, format: :json)
