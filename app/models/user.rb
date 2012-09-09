class User < ActiveRecord::Base
	attr_accessible :facebookID, :googleID, :has_features_newsletter, :has_weekly_mailing, :image_url, :language_id, :name, :password, :surname, :twitterID, :username, :website

	#Language
	belongs_to :language
	 
	#Follow
	has_many :followers, :class_name => "Follow", :foreign_key => "follower_id"
	has_many :followeds, :class_name => "Follow", :foreign_key => "followed_id"

	#Album
	has_many :userAlbum
	has_many :albums, :through => :userAlbum

	#Band
	has_many :userBand
	has_many :bands, :through => :userBand

	#AlbumLike
	has_many :albumLike
	has_many :likedAlbums, :through => :albumLike, :source => :album

	#SongLike
	has_many :songLike
	has_many :likedSongs, :through => :songLike, :source => :song

	def connectToBand( band_id )
		user_band 	= UserBand.create({ user_id: self.id, band_id: band_id })
		Band.find( band_id )
	end

  
end
