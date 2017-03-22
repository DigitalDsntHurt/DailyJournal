require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post meals_url, params: { meal: { eaten_at: @meal.eaten_at, i10: @meal.i10, i11: @meal.i11, i12: @meal.i12, i1: @meal.i1, i2: @meal.i2, i3: @meal.i3, i4: @meal.i4, i5: @meal.i5, i6: @meal.i6, i7: @meal.i7, i8: @meal.i8, i9: @meal.i9, i_other: @meal.i_other, meal: @meal.meal, meal_source: @meal.meal_source, notes: @meal.notes } }
    end

    assert_redirected_to meal_url(Meal.last)
  end

  test "should show meal" do
    get meal_url(@meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_url(@meal)
    assert_response :success
  end

  test "should update meal" do
    patch meal_url(@meal), params: { meal: { eaten_at: @meal.eaten_at, i10: @meal.i10, i11: @meal.i11, i12: @meal.i12, i1: @meal.i1, i2: @meal.i2, i3: @meal.i3, i4: @meal.i4, i5: @meal.i5, i6: @meal.i6, i7: @meal.i7, i8: @meal.i8, i9: @meal.i9, i_other: @meal.i_other, meal: @meal.meal, meal_source: @meal.meal_source, notes: @meal.notes } }
    assert_redirected_to meal_url(@meal)
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete meal_url(@meal)
    end

    assert_redirected_to meals_url
  end
end
