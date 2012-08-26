class AlbumSong < ActiveRecord::Base
  attr_accessible :song_id, :album_id
  
  belongs_to :song
  belongs_to :album
end
