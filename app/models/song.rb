class Song < ActiveRecord::Base
	
	attr_accessible :length, :listened_count, :name, :path

	#Album
	has_many :albumSong
	has_many :albums, :through => :albumSong

	#Users
	has_many :songLike
	has_many :likers, :through => :songLike, :source => :user
  
end
