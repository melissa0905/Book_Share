json.extract! comment, :id, :title, :content, :show, :user_id, :book_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
