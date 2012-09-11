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
  
  #Category
  has_many :albumCategory
  has_many :categories, :through => :albumCategory
  
  #Genre
  has_many :albumGenre
  has_many :genres, :through => :albumGenre

  #Band
  has_one :album

  def addSong( name, path, length )
    song        = Song.create({ name: name, path: path, listened_count: 0, length: length })
    album_song  = AlbumSong.create({ album_id: self.id, song_id: song.id })
    song
  end

end
