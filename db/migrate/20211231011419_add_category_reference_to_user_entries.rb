class AddCategoryReferenceToUserEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_entries, :category
  end
end
