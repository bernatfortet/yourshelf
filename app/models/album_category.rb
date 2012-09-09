class AlbumCategory < ActiveRecord::Base
  attr_accessible :album_id, :category_id
  
  belongs_to :album
  belongs_to :category
  
end
