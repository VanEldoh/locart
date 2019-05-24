class RenameColumnDateInArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :art_date, :integer
  end
end
