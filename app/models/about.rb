class About < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "info", "updated_at"]
  end
end
