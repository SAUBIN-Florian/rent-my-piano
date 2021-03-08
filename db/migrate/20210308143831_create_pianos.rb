class CreatePianos < ActiveRecord::Migration[6.0]
  def change
    create_table :pianos do |t|
      t.string :name
      t.integer :price
      t.string :brand
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
