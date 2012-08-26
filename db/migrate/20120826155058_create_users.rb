class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :image_url
      t.string :website
      t.string :username
      t.string :password
      t.integer :facebookID
      t.integer :twitterID
      t.integer :googleID
      t.boolean :has_weekly_mailing
      t.boolean :has_features_newsletter
      t.integer :language_id

      t.timestamps
    end
  end
end
