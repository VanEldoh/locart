class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :artworks, :street_address, :address
  end
end
