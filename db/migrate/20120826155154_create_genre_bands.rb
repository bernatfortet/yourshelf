class CreateGenreBands < ActiveRecord::Migration
  def change
    create_table :genre_bands do |t|
      t.integer :genre_id
      t.integer :band_id

      t.timestamps
    end
  end
end
