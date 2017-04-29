class UserMailer < ApplicationMailer

  # def account_activation(user)
  #   @user = user
  #   mail to: user.email, subject: "Account activation"
  # end
  #
  def password_reset
    mail to: 'hkame6926@gmail.com', subject: "Password reset"
  end
end
