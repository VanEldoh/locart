class AddColumnsToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :street_address, :string
    add_column :artworks, :zipcode, :string
    add_column :artworks, :city, :string
    add_column :artworks, :country, :string
  end
end
