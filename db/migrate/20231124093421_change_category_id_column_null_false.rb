class ChangeCategoryIdColumnNullFalse < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :category_id, :integer, null: false
  end
end
