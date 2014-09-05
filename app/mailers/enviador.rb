class Enviador

  def self.enviar_email(assunto, corpo)

    ActionMailer::Base.smtp_settings = {
        :address => "smtp.gmail.com",
        :domain => "gmail.com",
        :port => 587,
        :user_name => "testadordelinks@gmail.com",
        :password => "digdindigdin",
        :authentication => "plain",
        :enable_starttls_auto => true
    }

    ActionMailer::Base.mail(
        :from => "testadordelinks@gmail.com",
        :to => "renanandrade_rj@hotmail.com",
        :subject => assunto,
        :body => corpo)
    .deliver

  end

end