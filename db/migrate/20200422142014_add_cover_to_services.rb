class AddCoverToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :cover, :string
  end
end
