json.extract! event, :id, :name, :start_date, :end_date, :cover_img, :location, :description, :host, :created_at, :updated_at
json.url event_url(event, format: :json)
