class Restaurant < ApplicationRecord
  belongs_to :user
  after_save :send_welcome_restaurant
  private

  def send_welcome_restaurant
    RestaurantMailer.with(restaurant: self).welcome_restaurant.deliver_now
  end
end
