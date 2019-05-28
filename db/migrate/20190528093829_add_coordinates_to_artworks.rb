class AddCoordinatesToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :latitude, :float
    add_column :artworks, :longitude, :float
  end
end
