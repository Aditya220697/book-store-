class AddCategoryToBook < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :categories, null: false, foreign_key: true
  end
end
