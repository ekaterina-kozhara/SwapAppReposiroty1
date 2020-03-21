class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :description
      t.string :avatar_link
      t.integer :city_id

      t.timestamps
    end
  end
end
