class ChangeCategoryIdConstraintInBooksTable < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :category_id, :integer, null: true
  end
end
