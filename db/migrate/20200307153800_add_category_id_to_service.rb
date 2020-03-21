class AddCategoryIdToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :category_id, :integer
  end
end
