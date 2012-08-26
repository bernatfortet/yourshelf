class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :biography
      t.string :image_url

      t.timestamps
    end
  end
end
