class CreateUserEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :user_entries do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbohydrates
      t.string :fats
      t.string :integer

      t.timestamps
    end
  end
end
