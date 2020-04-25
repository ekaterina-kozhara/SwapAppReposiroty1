class CreateServiceImages < ActiveRecord::Migration[6.0]
  def change
    create_table :service_images do |t|
      t.integer :service_id
      t.string :image

      t.timestamps
    end
  end
end
