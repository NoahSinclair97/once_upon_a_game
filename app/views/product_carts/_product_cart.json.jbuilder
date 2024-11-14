json.extract! product_cart, :id, :product_id, :cart_id, :created_at, :updated_at
json.url product_cart_url(product_cart, format: :json)
