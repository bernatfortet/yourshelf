class CreateAlbumCategories < ActiveRecord::Migration
  def change
    create_table :album_categories do |t|
      t.integer :album_id
      t.integer :category_id

      t.timestamps
    end
  end
end
