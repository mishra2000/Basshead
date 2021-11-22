json.extract! address, :id, :first_name, :last_name, :address_line_1, :city, :state, :country, :zipCode, :phone, :user_id, :created_at, :updated_at
json.url address_url(address, format: :json)
