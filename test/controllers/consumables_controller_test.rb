require 'test_helper'

class ConsumablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumable = consumables(:one)
  end

  test "should get index" do
    get consumables_url
    assert_response :success
  end

  test "should get new" do
    get new_consumable_url
    assert_response :success
  end

  test "should create consumable" do
    assert_difference('Consumable.count') do
      post consumables_url, params: { consumable: { consumed_at: @consumable.consumed_at, consumption_type: @consumable.consumption_type, item10: @consumable.item10, item11: @consumable.item11, item12: @consumable.item12, item13: @consumable.item13, item14: @consumable.item14, item15: @consumable.item15, item1: @consumable.item1, item2: @consumable.item2, item3: @consumable.item3, item4: @consumable.item4, item5: @consumable.item5, item6: @consumable.item6, item7: @consumable.item7, item8: @consumable.item8, item9: @consumable.item9, notes: @consumable.notes, quantity: @consumable.quantity, units: @consumable.units } }
    end

    assert_redirected_to consumable_url(Consumable.last)
  end

  test "should show consumable" do
    get consumable_url(@consumable)
    assert_response :success
  end

  test "should get edit" do
    get edit_consumable_url(@consumable)
    assert_response :success
  end

  test "should update consumable" do
    patch consumable_url(@consumable), params: { consumable: { consumed_at: @consumable.consumed_at, consumption_type: @consumable.consumption_type, item10: @consumable.item10, item11: @consumable.item11, item12: @consumable.item12, item13: @consumable.item13, item14: @consumable.item14, item15: @consumable.item15, item1: @consumable.item1, item2: @consumable.item2, item3: @consumable.item3, item4: @consumable.item4, item5: @consumable.item5, item6: @consumable.item6, item7: @consumable.item7, item8: @consumable.item8, item9: @consumable.item9, notes: @consumable.notes, quantity: @consumable.quantity, units: @consumable.units } }
    assert_redirected_to consumable_url(@consumable)
  end

  test "should destroy consumable" do
    assert_difference('Consumable.count', -1) do
      delete consumable_url(@consumable)
    end

    assert_redirected_to consumables_url
  end
end
