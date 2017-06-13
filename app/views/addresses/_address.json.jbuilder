json.extract! address, :id, :street, :cep, :city, :state, :person_id, :created_at, :updated_at
json.url address_url(address, format: :json)
