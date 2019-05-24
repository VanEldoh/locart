class AddPhotoToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :photo, :string
  end
end
