class AddReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :pianos, :user, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :piano, foreign_key: true
  end
end
