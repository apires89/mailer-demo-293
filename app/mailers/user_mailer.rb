class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_user.subject
  #
  def welcome_user
    @user = params[:user]


    mail(to: @user.email, subject: "Welcome Sir, Is very nice to have you with us!")
  end
end
