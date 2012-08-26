class Band < ActiveRecord::Base
	attr_accessible :biography, :image_url, :name

	#User
	has_many :userBand
	has_many :musicians, :through => :userBand, :source => :user

	#Category
	has_many :categoryBand
	has_many :categories, :through => :categoryBand

	def addAlbum( title, description  )
		album 		= Album.create({ title: title, description: description })
		album_band 	= AlbumBand.create({ band_id: self.id, album_id: album.id })
		album
	end

end
