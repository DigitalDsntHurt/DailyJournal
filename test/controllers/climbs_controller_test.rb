require 'test_helper'

class ClimbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @climb = climbs(:one)
  end

  test "should get index" do
    get climbs_url
    assert_response :success
  end

  test "should get new" do
    get new_climb_url
    assert_response :success
  end

  test "should create climb" do
    assert_difference('Climb.count') do
      post climbs_url, params: { climb: { v0s: @climb.v0s, v1s: @climb.v1s, v2s: @climb.v2s, v3s: @climb.v3s, v4s: @climb.v4s, v5s: @climb.v5s, v6s: @climb.v6s, v7s: @climb.v7s, v8s: @climb.v8s, v9s: @climb.v9s } }
    end

    assert_redirected_to climb_url(Climb.last)
  end

  test "should show climb" do
    get climb_url(@climb)
    assert_response :success
  end

  test "should get edit" do
    get edit_climb_url(@climb)
    assert_response :success
  end

  test "should update climb" do
    patch climb_url(@climb), params: { climb: { v0s: @climb.v0s, v1s: @climb.v1s, v2s: @climb.v2s, v3s: @climb.v3s, v4s: @climb.v4s, v5s: @climb.v5s, v6s: @climb.v6s, v7s: @climb.v7s, v8s: @climb.v8s, v9s: @climb.v9s } }
    assert_redirected_to climb_url(@climb)
  end

  test "should destroy climb" do
    assert_difference('Climb.count', -1) do
      delete climb_url(@climb)
    end

    assert_redirected_to climbs_url
  end
end
