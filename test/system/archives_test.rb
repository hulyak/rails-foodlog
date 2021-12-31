require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  setup do
    @user_entry = user_entries(:breakfast)
  end

  test "visiting the archives index" do
    visit archives_index_url

    assert_selector "h1", text: "Foodlog"
    assert_selector "h3", text: "Entries for #{@user_entry.day}"
    assert text: @user_entry.meal_type
  end
end