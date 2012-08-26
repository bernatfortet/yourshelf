# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
	{ name: "Bernat" },
	{ name: "Ferri" },
	{ name: "Sampe" },
	{ name: "John" }
])

Album.create([
	{ title: "FastFall", description: "his is the original sountrack for the indie game Dustforce. There are 3 bonus tracks included if you buy the full album! There are also liner notes and a nice tracklist insert."  }
])

Album.create([
	{ name: "CideTime" },
	{ name: "LoneStar" },
	{ name: "DoomSock" },
	{ name: "TheCloud" },
])
