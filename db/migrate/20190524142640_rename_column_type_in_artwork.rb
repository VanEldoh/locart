class RenameColumnTypeInArtwork < ActiveRecord::Migration[5.2]
  def change
    rename_column :artworks, :type, :art_type
  end
end
