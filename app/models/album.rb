class Album < ActiveRecord::Base
  attr_accessible :description, :listened_count, :purchased_count, :title

  #User  
  has_many :userAlbum
  has_many :musicians, :through => :userAlbum, :source => :user
  
  #Likers
  has_many :albumLike
  has_many :likers, :through => :albumLike, :source => :user
  
  #Song
  has_many :albumSong
  has_many :songs, :through => :albumSong
  
  
end
