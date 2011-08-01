require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "users can be created" do
    assert_difference "User.count" do
      User.create!(first_name: "Here", last_name: "Is", email: "A", city: "Test")
    end
  end


end
