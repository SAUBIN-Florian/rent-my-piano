class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :mail
    remove_column :users, :password
  end
end
