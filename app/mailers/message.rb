class Message < ActionMailer::Base
  default :from => "no-reply@socialer.com",
    :return_path => "socialer@gmail.com"

  def send_message user, message
    @user = user
    @message = message
  end
end
