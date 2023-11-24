class ChangeUserIdColumnNullFalse < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :user_id, :integer, null: false
  end
end
