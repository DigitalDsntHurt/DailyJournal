require 'test_helper'

class SpliffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spliff = spliffs(:one)
  end

  test "should get index" do
    get spliffs_url
    assert_response :success
  end

  test "should get new" do
    get new_spliff_url
    assert_response :success
  end

  test "should create spliff" do
    assert_difference('Spliff.count') do
      post spliffs_url, params: { spliff: {  } }
    end

    assert_redirected_to spliff_url(Spliff.last)
  end

  test "should show spliff" do
    get spliff_url(@spliff)
    assert_response :success
  end

  test "should get edit" do
    get edit_spliff_url(@spliff)
    assert_response :success
  end

  test "should update spliff" do
    patch spliff_url(@spliff), params: { spliff: {  } }
    assert_redirected_to spliff_url(@spliff)
  end

  test "should destroy spliff" do
    assert_difference('Spliff.count', -1) do
      delete spliff_url(@spliff)
    end

    assert_redirected_to spliffs_url
  end
end
