class PositionMailer < ActionMailer::Base
  default from: "bargeplanner@gmail.com"
  layout 'mailer'

  def general_message(position)
    @position = position
    mail(:to => "sebastiaankosman@gmail.com, sebastiaan.kosman@shell.com", :subject => "Position update")
  end
end
