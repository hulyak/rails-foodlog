require "application_system_test_case"

class UserEntriesTest < ApplicationSystemTestCase
  setup do
    @user_entry = user_entries(:one)
  end

  test "visiting the index" do
    visit user_entries_url
    assert_selector "h1", text: "User Entries"
  end

  test "creating a User entry" do
    visit user_entries_url
    click_on "New User Entry"

    fill_in "Calories", with: @user_entry.calories
    fill_in "Carbohydrates", with: @user_entry.carbohydrates
    fill_in "Fats", with: @user_entry.fats
    fill_in "Integer", with: @user_entry.integer
    fill_in "Meal type", with: @user_entry.meal_type
    fill_in "Proteins", with: @user_entry.proteins
    click_on "Create User entry"

    assert_text "User entry was successfully created"
    click_on "Back"
  end

  test "updating a User entry" do
    visit user_entries_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @user_entry.calories
    fill_in "Carbohydrates", with: @user_entry.carbohydrates
    fill_in "Fats", with: @user_entry.fats
    fill_in "Meal type", with: @user_entry.meal_type
    fill_in "Proteins", with: @user_entry.proteins
    click_on "Update User entry"

    assert_text "User entry was successfully updated"
    click_on "Back"
  end

  test "destroying a User entry" do
    visit user_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User entry was successfully destroyed"
  end
end
