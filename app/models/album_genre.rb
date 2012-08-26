class AlbumGenre < ActiveRecord::Base
  attr_accessible :album_id, :genre_id
  
  belongs_tp :album
  belongs_tp :genre
  
end
