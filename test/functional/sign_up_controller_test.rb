require 'test_helper'

class SignUpControllerTest < ActionController::TestCase
  test "should create user" do 
    user = users :one

    assert_difference('User.count') do
      post :create, :user => user.attributes 
    end      

    assert_response :success 
    assert_equal "Success", flash[:notice]
  end

  test "shows flash with error" do
    user = users :error

    assert_no_difference('User.count') do
      post :create, :user => user.attributes
    end

    assert_equal "can't be blank", flash[:notice][:first_name][0]
  end
end
