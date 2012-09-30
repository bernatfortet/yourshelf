class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :remember_me
	
	# Virtual attribute for authenticating by either username or email
	# This is in addition to a real persisted field like 'username'
	attr_accessor :login
	attr_accessible :login

	#attributs
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

	def belongToBand( band_id )
		user_band 	= UserBand.create({ user_id: self.id, band_id: band_id })
		Band.find( band_id )
	end

	def addAlbumToShelf( album_id )
		user_album 	= UserAlbum.create({ user_id: self.id, album_id: album_id })
		Album.find( album_id )
	end

	def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end

	### This is the correct method you override with the code above
	### def self.find_for_database_authentication(warden_conditions)
	### end 



  
end
