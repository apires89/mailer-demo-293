class Restaurant < ApplicationRecord
  belongs_to :user
  after_save :welcome_restaurant
end
