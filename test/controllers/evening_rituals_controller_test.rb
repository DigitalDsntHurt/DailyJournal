require 'test_helper'

class EveningRitualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evening_ritual = evening_rituals(:one)
  end

  test "should get index" do
    get evening_rituals_url
    assert_response :success
  end

  test "should get new" do
    get new_evening_ritual_url
    assert_response :success
  end

  test "should create evening_ritual" do
    assert_difference('EveningRitual.count') do
      post evening_rituals_url, params: { evening_ritual: { brush: @evening_ritual.brush, core: @evening_ritual.core, journal: @evening_ritual.journal, ktime: @evening_ritual.ktime, read: @evening_ritual.read, stretch: @evening_ritual.stretch, wash: @evening_ritual.wash } }
    end

    assert_redirected_to evening_ritual_url(EveningRitual.last)
  end

  test "should show evening_ritual" do
    get evening_ritual_url(@evening_ritual)
    assert_response :success
  end

  test "should get edit" do
    get edit_evening_ritual_url(@evening_ritual)
    assert_response :success
  end

  test "should update evening_ritual" do
    patch evening_ritual_url(@evening_ritual), params: { evening_ritual: { brush: @evening_ritual.brush, core: @evening_ritual.core, journal: @evening_ritual.journal, ktime: @evening_ritual.ktime, read: @evening_ritual.read, stretch: @evening_ritual.stretch, wash: @evening_ritual.wash } }
    assert_redirected_to evening_ritual_url(@evening_ritual)
  end

  test "should destroy evening_ritual" do
    assert_difference('EveningRitual.count', -1) do
      delete evening_ritual_url(@evening_ritual)
    end

    assert_redirected_to evening_rituals_url
  end
end
