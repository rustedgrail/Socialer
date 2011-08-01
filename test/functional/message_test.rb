require 'test_helper'

class MessageTest < ActionMailer::TestCase

  test "a message is sent" do
    message = Message.send_message users(:one), "My Message!"
    message.deliver

    assert !ActionMailer::Base.deliveries.empty?
  end

end
