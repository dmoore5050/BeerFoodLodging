class UserMailer < ActionMailer::Base
  default from: "notifications@beerfoodlodging.com"

  def welcome_email(user)
    @user = user
    @url  = "http://beerfoodlodging.com/login"
    mail(:to => user.email, :subject => "Welcome to BeerFoodLodging!")
  end

  def message_email(message)
    users = eval(message.recipient).split(',').map { |id| User.find id }
    binding.pry

    users.each do |user|
      @user    = user
      @message = message
      @url     = "http://beerfoodlodging.com/messages/new"
      mail(:to => recipient.email, :subject => message.title)
    end
  end
end
