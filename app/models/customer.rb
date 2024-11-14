class Customer < ApplicationRecord
  belongs_to :address
  belongs_to :card
  belongs_to :cart
  belongs_to :user
end
