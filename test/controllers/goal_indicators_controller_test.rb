require 'test_helper'

class GoalIndicatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_indicator = goal_indicators(:one)
  end

  test "should get index" do
    get goal_indicators_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_indicator_url
    assert_response :success
  end

  test "should create goal_indicator" do
    assert_difference('GoalIndicator.count') do
      post goal_indicators_url, params: { goal_indicator: { boolean_indicator: @goal_indicator.boolean_indicator, dollars_made_indicator: @goal_indicator.dollars_made_indicator, dollars_spent_indicator: @goal_indicator.dollars_spent_indicator, goal_category: @goal_indicator.goal_category, measure: @goal_indicator.measure, text_indicator: @goal_indicator.text_indicator } }
    end

    assert_redirected_to goal_indicator_url(GoalIndicator.last)
  end

  test "should show goal_indicator" do
    get goal_indicator_url(@goal_indicator)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_indicator_url(@goal_indicator)
    assert_response :success
  end

  test "should update goal_indicator" do
    patch goal_indicator_url(@goal_indicator), params: { goal_indicator: { boolean_indicator: @goal_indicator.boolean_indicator, dollars_made_indicator: @goal_indicator.dollars_made_indicator, dollars_spent_indicator: @goal_indicator.dollars_spent_indicator, goal_category: @goal_indicator.goal_category, measure: @goal_indicator.measure, text_indicator: @goal_indicator.text_indicator } }
    assert_redirected_to goal_indicator_url(@goal_indicator)
  end

  test "should destroy goal_indicator" do
    assert_difference('GoalIndicator.count', -1) do
      delete goal_indicator_url(@goal_indicator)
    end

    assert_redirected_to goal_indicators_url
  end
end
