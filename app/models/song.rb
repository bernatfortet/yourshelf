class Song < ActiveRecord::Base
  attr_accessible :length, :listened_count, :name
  
  #Song
  has_many :albumSong
  has_many :albums, :through => :albumSong
  
end
