class Customer < ApplicationRecord
  belongs_to :address
  belongs_to :card
  belongs_to :cart
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
end
