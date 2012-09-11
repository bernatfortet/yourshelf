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
user2 	= User.create({ name: "Marc" })

#Create a Band
band1 	= Band.create({ name: "La pegatina", biography: "Band1 Biography"})
band2 	= Band.create({ name: "Platero y tu", biography: "Band2 Biography"})

#Create albums and its songs
album1 	= band1.addAlbum( "Xapomelon", "Album1 Description") #album year??
song1 	= album1.addSong( "Chocholoco", "LaPegatina/Xapomelon/Chocholoco.mp3", 150);
song2 	= album1.addSong( "Muerdeme", "LaPegatina/Xapomelon/Muerdeme.mp3", 154 );
song3 	= album1.addSong( "Recuerdos", "LaPegatina/Xapomelon/Recuerdos.mp3", 148 );


album2 	= band2.addAlbum( "Album2 Name", "Album2 Description")
song1 	= album2.addSong( "Album2 Song1 Name", "fakePath", 0);
song2 	= album2.addSong( "Album2 Song2 Name", "fakePath", 0);

# Make User belong to Band
user1.belongToBand( band1.id );
user2.belongToBand( band2.id );

# Add Album to Users Shelfs
user1.addAlbumToShelf( band2.id );
user2.addAlbumToShelf( band1.id );