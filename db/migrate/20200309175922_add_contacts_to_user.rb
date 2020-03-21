class AddContactsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :telegram,  :string
    add_column :users, :whats_app, :string
    add_column :users, :telephone, :string
    add_column :users, :instagram, :string
  end
end
