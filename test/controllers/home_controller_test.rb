require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get account" do
    get :account
    assert_response :success
  end

end
