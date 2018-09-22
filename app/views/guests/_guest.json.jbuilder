json.extract! guest, :id, :comment_id, :name, :created_at, :updated_at
json.url guest_url(guest, format: :json)
