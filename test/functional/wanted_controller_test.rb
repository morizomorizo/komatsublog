require 'test_helper'

class WantedControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get new_issue" do
    get :new_issue
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

end
