class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :length
      t.integer :listened_count

      t.timestamps
    end
  end
end
