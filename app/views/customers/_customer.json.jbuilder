json.extract! customer, :id, :first_name, :last_name, :address_id, :card_id, :cart_id, :user_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
