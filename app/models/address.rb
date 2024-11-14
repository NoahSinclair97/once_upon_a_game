class Address < ApplicationRecord
  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :postal_code, presence: true
end
