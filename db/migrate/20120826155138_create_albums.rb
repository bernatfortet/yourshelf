class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.integer :listened_count
      t.integer :purchased_count

      t.timestamps
    end
  end
end
