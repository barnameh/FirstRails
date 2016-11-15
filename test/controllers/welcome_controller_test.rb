require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should return a welcome for a name" do
    get "/Missy"
    assert_match /Welcome Missy/, response.body
  end

  test "should return Lorem ipsom for standard lorem" do
    get "/lorem/standard"
    assert_match /Lorem ipsum dolor sit amet/, response.body
  end
end
