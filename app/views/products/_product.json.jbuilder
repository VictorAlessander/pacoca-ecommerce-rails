json.extract! product, :id, :cod, :name, :price, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
