json.extract! card, :id, :card_number, :exp_date, :cvv, :created_at, :updated_at
json.url card_url(card, format: :json)
