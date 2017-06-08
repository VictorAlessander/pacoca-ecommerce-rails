json.extract! cart, :id, :cod, :name, :price, :quantity, :total, :person_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
