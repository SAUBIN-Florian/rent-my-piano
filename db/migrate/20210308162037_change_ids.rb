class ChangeIds < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :pianos_id
    remove_column :bookings, :users_id
    remove_column :pianos, :users_id
  end
end
