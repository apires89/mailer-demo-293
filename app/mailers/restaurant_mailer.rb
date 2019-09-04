class RestaurantMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.restaurant_mailer.welcome.subject
  #
  def welcome_restaurant
    @restaurant = params[:restaurant] # Instance variable => available in view
    mail(to: @restaurant.user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end
end
