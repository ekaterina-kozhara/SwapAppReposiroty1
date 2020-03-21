class AddImageToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :image, :file
  end
end
