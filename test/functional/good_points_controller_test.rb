require 'test_helper'

class GoodPointsControllerTest < ActionController::TestCase
  setup do
    @good_point = good_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:good_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create good_point" do
    assert_difference('GoodPoint.count') do
      post :create, good_point: { count: @good_point.count, issue_id: @good_point.issue_id, user_id: @good_point.user_id }
    end

    assert_redirected_to good_point_path(assigns(:good_point))
  end

  test "should show good_point" do
    get :show, id: @good_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @good_point
    assert_response :success
  end

  test "should update good_point" do
    put :update, id: @good_point, good_point: { count: @good_point.count, issue_id: @good_point.issue_id, user_id: @good_point.user_id }
    assert_redirected_to good_point_path(assigns(:good_point))
  end

  test "should destroy good_point" do
    assert_difference('GoodPoint.count', -1) do
      delete :destroy, id: @good_point
    end

    assert_redirected_to good_points_path
  end
end
