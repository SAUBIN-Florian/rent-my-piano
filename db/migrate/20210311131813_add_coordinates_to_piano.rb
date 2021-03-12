class AddCoordinatesToPiano < ActiveRecord::Migration[6.0]
  def change
    add_column :pianos, :latitude, :float
    add_column :pianos, :longitude, :float
  end
end
