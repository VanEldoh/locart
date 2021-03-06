class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.string :size
      t.integer :art_date
      t.string :art_type
      t.string :category
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
