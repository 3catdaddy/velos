json.extract! booking, :id, :bike_id, :user_id, :start, :end, :created_at, :updated_at
json.url booking_url(booking, format: :json)
