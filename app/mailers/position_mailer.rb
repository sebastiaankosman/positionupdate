class PositionMailer < ActionMailer::Base
  default from: "bargeplanner@gmail.com"
  layout 'mailer'

  def general_message(position)
    @position = position
    mail(:to => "sebastiaankosman@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
