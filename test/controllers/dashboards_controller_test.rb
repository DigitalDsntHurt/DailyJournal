require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get morning_dash" do
    get dashboards_morning_dash_url
    assert_response :success
  end

  test "should get evening_dash" do
    get dashboards_evening_dash_url
    assert_response :success
  end

  test "should get rituals_dash" do
    get dashboards_rituals_dash_url
    assert_response :success
  end

  test "should get goal_tracking_dash" do
    get dashboards_goal_tracking_dash_url
    assert_response :success
  end

  test "should get scratch_dash" do
    get dashboards_scratch_dash_url
    assert_response :success
  end

end
