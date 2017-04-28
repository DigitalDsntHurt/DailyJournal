require 'test_helper'

class DailyAccomplishmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_accomplishment = daily_accomplishments(:one)
  end

  test "should get index" do
    get daily_accomplishments_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_accomplishment_url
    assert_response :success
  end

  test "should create daily_accomplishment" do
    assert_difference('DailyAccomplishment.count') do
      post daily_accomplishments_url, params: { daily_accomplishment: { day: @daily_accomplishment.day, priority1: @daily_accomplishment.priority1, priority1_accomplished: @daily_accomplishment.priority1_accomplished, priority2: @daily_accomplishment.priority2, priority2_accomplished: @daily_accomplishment.priority2_accomplished, priority3: @daily_accomplishment.priority3, priority3_accomplished: @daily_accomplishment.priority3_accomplished, priority4: @daily_accomplishment.priority4, priority4_accomplished: @daily_accomplishment.priority4_accomplished, priority5: @daily_accomplishment.priority5, priority5_accomplished: @daily_accomplishment.priority5_accomplished, priority6: @daily_accomplishment.priority6, priority6_accomplished: @daily_accomplishment.priority6_accomplished, priority7: @daily_accomplishment.priority7, priority7_accomplished: @daily_accomplishment.priority7_accomplished, priority8: @daily_accomplishment.priority8, priority8_accomplished: @daily_accomplishment.priority8_accomplished, priority9: @daily_accomplishment.priority9, priority9_accomplished: @daily_accomplishment.priority9_accomplished } }
    end

    assert_redirected_to daily_accomplishment_url(DailyAccomplishment.last)
  end

  test "should show daily_accomplishment" do
    get daily_accomplishment_url(@daily_accomplishment)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_accomplishment_url(@daily_accomplishment)
    assert_response :success
  end

  test "should update daily_accomplishment" do
    patch daily_accomplishment_url(@daily_accomplishment), params: { daily_accomplishment: { day: @daily_accomplishment.day, priority1: @daily_accomplishment.priority1, priority1_accomplished: @daily_accomplishment.priority1_accomplished, priority2: @daily_accomplishment.priority2, priority2_accomplished: @daily_accomplishment.priority2_accomplished, priority3: @daily_accomplishment.priority3, priority3_accomplished: @daily_accomplishment.priority3_accomplished, priority4: @daily_accomplishment.priority4, priority4_accomplished: @daily_accomplishment.priority4_accomplished, priority5: @daily_accomplishment.priority5, priority5_accomplished: @daily_accomplishment.priority5_accomplished, priority6: @daily_accomplishment.priority6, priority6_accomplished: @daily_accomplishment.priority6_accomplished, priority7: @daily_accomplishment.priority7, priority7_accomplished: @daily_accomplishment.priority7_accomplished, priority8: @daily_accomplishment.priority8, priority8_accomplished: @daily_accomplishment.priority8_accomplished, priority9: @daily_accomplishment.priority9, priority9_accomplished: @daily_accomplishment.priority9_accomplished } }
    assert_redirected_to daily_accomplishment_url(@daily_accomplishment)
  end

  test "should destroy daily_accomplishment" do
    assert_difference('DailyAccomplishment.count', -1) do
      delete daily_accomplishment_url(@daily_accomplishment)
    end

    assert_redirected_to daily_accomplishments_url
  end
end
