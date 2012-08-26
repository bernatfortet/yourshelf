class AlbumCategory < ActiveRecord::Base
  attr_accessible :album_id, :category_id
  
  belongs_tp :album
  belongs_tp :category
  
end
