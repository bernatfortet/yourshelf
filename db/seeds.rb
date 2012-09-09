# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Users
user1 	= User.create({ name: "Bernat" })
user2 	= User.create({ name: "Ferri" })

#Create a Band
band1 	= Band.create({ name: "Band1 Name", biography: "Band1 Biography"})
band2 	= Band.create({ name: "Band2 Name", biography: "Band2 Biography"})

#Create albums and its songs
album1 	= band1.addAlbum( "Album1 Name", "Album1 Description")
song1 	= album1.addSong( "Album1 Song1 Name ");
song2 	= album1.addSong( "Album1 Song2 Name ");


album2 	= band2.addAlbum( "Album2 Name", "Album2 Description")
song1 	= album2.addSong( "Album2 Song1 Name ");
song2 	= album2.addSong( "Album2 Song2 Name ");

# Make User belong to Band
user1.belongToBand( band1.id );
user2.belongToBand( band2.id );

# Add Album to Users Shelfs
user1.addAlbumToShelf( band2.id );
user2.addAlbumToShelf( band1.id );