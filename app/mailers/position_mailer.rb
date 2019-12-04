class PositionMailer < ActionMailer::Base
  default from: "bargeplanner@gmail.com"
  layout 'mailer'

  def general_message(position, barge_name)

    @position = position
    @barge_name = barge_name



    mail(:to => "sebastiaan.kosman@shell.com, floris.duursma@shell.com", :subject => "Barge position #{barge_name}")
  end
end
