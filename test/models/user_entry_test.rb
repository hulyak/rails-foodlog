require "test_helper"

class UserEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Lunch", carbohydrates: 35, proteins: 20, fats: 10, calories: 400)
    assert entry.save
  end
end

