class PositionupdatesMailer < ActionMailer::Base
  default from: "bargeplanner@gmail.com"

  def general_message(positionupdates)
    @positionupdates = positionupdates
    mail(:to => "sebastiaankosman@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
