class ChangeCategoryIdColumn < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :category_id, :integer, null: true
  end
end
