require "test_helper"

class UserEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_entry = user_entries(:one)
  end

  test "should get index" do
    get user_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_user_entry_url
    assert_response :success
  end

  test "should create user_entry" do
    assert_difference('UserEntry.count') do
      post user_entries_url, params: { user_entry: { calories: @user_entry.calories, carbohydrates: @user_entry.carbohydrates, fats: @user_entry.fats, integer: @user_entry.integer, meal_type: @user_entry.meal_type, proteins: @user_entry.proteins } }
    end

    assert_redirected_to user_entry_url(UserEntry.last)
  end

  test "should show user_entry" do
    get user_entry_url(@user_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_entry_url(@user_entry)
    assert_response :success
  end

  test "should update user_entry" do
    patch user_entry_url(@user_entry), params: { user_entry: { calories: @user_entry.calories, carbohydrates: @user_entry.carbohydrates, fats: @user_entry.fats, integer: @user_entry.integer, meal_type: @user_entry.meal_type, proteins: @user_entry.proteins } }
    assert_redirected_to user_entry_url(@user_entry)
  end

  test "should destroy user_entry" do
    assert_difference('UserEntry.count', -1) do
      delete user_entry_url(@user_entry)
    end

    assert_redirected_to user_entries_url
  end
end
