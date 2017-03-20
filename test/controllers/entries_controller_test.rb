require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_url
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { affirmation_1: @entry.affirmation_1, affirmation_2: @entry.affirmation_2, amazing_thing_1: @entry.amazing_thing_1, amazing_thing_2: @entry.amazing_thing_2, amazing_thing_3: @entry.amazing_thing_3, anything_else: @entry.anything_else, grateful_1: @entry.grateful_1, grateful_2: @entry.grateful_2, grateful_3: @entry.grateful_3, improve_today_1: @entry.improve_today_1, improve_today_2: @entry.improve_today_2, make_today_great_1: @entry.make_today_great_1, make_today_great_2: @entry.make_today_great_2, make_today_great_3: @entry.make_today_great_3 } }
    end

    assert_redirected_to entry_url(Entry.last)
  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { affirmation_1: @entry.affirmation_1, affirmation_2: @entry.affirmation_2, amazing_thing_1: @entry.amazing_thing_1, amazing_thing_2: @entry.amazing_thing_2, amazing_thing_3: @entry.amazing_thing_3, anything_else: @entry.anything_else, grateful_1: @entry.grateful_1, grateful_2: @entry.grateful_2, grateful_3: @entry.grateful_3, improve_today_1: @entry.improve_today_1, improve_today_2: @entry.improve_today_2, make_today_great_1: @entry.make_today_great_1, make_today_great_2: @entry.make_today_great_2, make_today_great_3: @entry.make_today_great_3 } }
    assert_redirected_to entry_url(@entry)
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_url
  end
end
