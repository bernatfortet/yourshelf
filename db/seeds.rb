# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 	= User.create({ name: "Bernat" })
user2 	= User.create({ name: "Ferri" })

band 	= Band.create({ name: "Band Name", biography: "Band Biography"})
user1.connectToBand( band.id );
user2.connectToBand( band.id );

album1 	= band.addAlbum( "Album1 Name", "Album1 Description")
song1 	= album1.addSong( "Album1 Song1 Name ");
song2 	= album1.addSong( "Album1 Song2 Name ");


album2 	= band.addAlbum( "Album2 Name", "Album2 Description")
song1 	= album2.addSong( "Album2 Song1 Name ");
song2 	= album2.addSong( "Album2 Song2 Name ");