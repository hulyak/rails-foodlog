json.extract! user_entry, :id, :meal_type, :calories, :proteins, :carbohydrates, :fats, :integer, :created_at, :updated_at
json.url user_entry_url(user_entry, format: :json)
