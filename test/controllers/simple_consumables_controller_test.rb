require 'test_helper'

class SimpleConsumablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simple_consumable = simple_consumables(:one)
  end

  test "should get index" do
    get simple_consumables_url
    assert_response :success
  end

  test "should get new" do
    get new_simple_consumable_url
    assert_response :success
  end

  test "should create simple_consumable" do
    assert_difference('SimpleConsumable.count') do
      post simple_consumables_url, params: { simple_consumable: { occurrence_date: @simple_consumable.occurrence_date, occurrence_time: @simple_consumable.occurrence_time, on_diet: @simple_consumable.on_diet } }
    end

    assert_redirected_to simple_consumable_url(SimpleConsumable.last)
  end

  test "should show simple_consumable" do
    get simple_consumable_url(@simple_consumable)
    assert_response :success
  end

  test "should get edit" do
    get edit_simple_consumable_url(@simple_consumable)
    assert_response :success
  end

  test "should update simple_consumable" do
    patch simple_consumable_url(@simple_consumable), params: { simple_consumable: { occurrence_date: @simple_consumable.occurrence_date, occurrence_time: @simple_consumable.occurrence_time, on_diet: @simple_consumable.on_diet } }
    assert_redirected_to simple_consumable_url(@simple_consumable)
  end

  test "should destroy simple_consumable" do
    assert_difference('SimpleConsumable.count', -1) do
      delete simple_consumable_url(@simple_consumable)
    end

    assert_redirected_to simple_consumables_url
  end
end
