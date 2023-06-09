class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    params[:user]

    mail to: params[:user].email
    # mail to: "to@example.org"
  end
end
