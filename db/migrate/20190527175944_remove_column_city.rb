class RemoveColumnCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :city
  end
end
