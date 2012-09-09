class AlbumBand < ActiveRecord::Base
  attr_accessible :album_id, :band_id

  belongs_to :album
  belongs_to :band
  
end
