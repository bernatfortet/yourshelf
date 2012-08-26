class CreateCategoriesBands < ActiveRecord::Migration
  def change
    create_table :categories_bands do |t|
      t.integer :category_id
      t.integer :band_id

      t.timestamps
    end
  end
end
