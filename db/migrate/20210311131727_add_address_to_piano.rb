class AddAddressToPiano < ActiveRecord::Migration[6.0]
  def change
    add_column :pianos, :address, :string
  end
end
