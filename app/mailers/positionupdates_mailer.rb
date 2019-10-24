class PositionupdatesMailer < ActionMailer::Base
  default from: "bargeplanner@gmail.com"

  def general_message(positionupdates)
    @positionupdates = positionupdates
    @user = user
    mail(:to => "sebastiaankosman@gmail", :subject => "You Have a Message From Your Website")
  end
end
