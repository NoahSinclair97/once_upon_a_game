class Card < ApplicationRecord
  validates :card_number, presence: true, format: { with: /^(?:
  (4[0-9]{12}(?:[0-9]{3})?) |          # Visa
  (5[1-5][0-9]{14}) |                  # MasterCard
  (6(?:011|5[0-9]{2})[0-9]{12}) |      # Discover
  (3[47][0-9]{13}) |                   # AMEX
  (3(?:0[0-5]|[68][0-9])[0-9]{11}) |   # Diners Club
  ((?:2131|1800|35[0-9]{3})[0-9]{11})  # JCB
  )$/ }
  validates :exp_date, presence: true
  validates :cvv, presence: true, format: { with: /\d{3}/ }
end
