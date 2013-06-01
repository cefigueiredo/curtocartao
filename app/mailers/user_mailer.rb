class UserMailer < ActionMailer::Base
  default from: "pedro.howat@gmail.com"

  def test_email(user)
    @user = user
    @url = "http://caguei"
    mail(:to => "pedro@instant.com.br", :subject => "Test Email From Rails app.")
  end
end
