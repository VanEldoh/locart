class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :zipcode
  end
end
