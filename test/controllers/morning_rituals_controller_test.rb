require 'test_helper'

class MorningRitualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @morning_ritual = morning_rituals(:one)
  end

  test "should get index" do
    get morning_rituals_url
    assert_response :success
  end

  test "should get new" do
    get new_morning_ritual_url
    assert_response :success
  end

  test "should create morning_ritual" do
    assert_difference('MorningRitual.count') do
      post morning_rituals_url, params: { morning_ritual: { brush: @morning_ritual.brush, day: @morning_ritual.day, drink_water: @morning_ritual.drink_water, exercise: @morning_ritual.exercise, journal: @morning_ritual.journal, meditate: @morning_ritual.meditate, protein: @morning_ritual.protein, read: @morning_ritual.read, waketime: @morning_ritual.waketime } }
    end

    assert_redirected_to morning_ritual_url(MorningRitual.last)
  end

  test "should show morning_ritual" do
    get morning_ritual_url(@morning_ritual)
    assert_response :success
  end

  test "should get edit" do
    get edit_morning_ritual_url(@morning_ritual)
    assert_response :success
  end

  test "should update morning_ritual" do
    patch morning_ritual_url(@morning_ritual), params: { morning_ritual: { brush: @morning_ritual.brush, day: @morning_ritual.day, drink_water: @morning_ritual.drink_water, exercise: @morning_ritual.exercise, journal: @morning_ritual.journal, meditate: @morning_ritual.meditate, protein: @morning_ritual.protein, read: @morning_ritual.read, waketime: @morning_ritual.waketime } }
    assert_redirected_to morning_ritual_url(@morning_ritual)
  end

  test "should destroy morning_ritual" do
    assert_difference('MorningRitual.count', -1) do
      delete morning_ritual_url(@morning_ritual)
    end

    assert_redirected_to morning_rituals_url
  end
end
