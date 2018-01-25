require 'test_helper'

class EverydaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @everyday = everydays(:one)
  end

  test "should get index" do
    get everydays_url
    assert_response :success
  end

  test "should get new" do
    get new_everyday_url
    assert_response :success
  end

  test "should create everyday" do
    assert_difference('Everyday.count') do
      post everydays_url, params: { everyday: { cardio: @everyday.cardio, eat_to_plan: @everyday.eat_to_plan, exercise: @everyday.exercise, make_money: @everyday.make_money, read: @everyday.read } }
    end

    assert_redirected_to everyday_url(Everyday.last)
  end

  test "should show everyday" do
    get everyday_url(@everyday)
    assert_response :success
  end

  test "should get edit" do
    get edit_everyday_url(@everyday)
    assert_response :success
  end

  test "should update everyday" do
    patch everyday_url(@everyday), params: { everyday: { cardio: @everyday.cardio, eat_to_plan: @everyday.eat_to_plan, exercise: @everyday.exercise, make_money: @everyday.make_money, read: @everyday.read } }
    assert_redirected_to everyday_url(@everyday)
  end

  test "should destroy everyday" do
    assert_difference('Everyday.count', -1) do
      delete everyday_url(@everyday)
    end

    assert_redirected_to everydays_url
  end
end
