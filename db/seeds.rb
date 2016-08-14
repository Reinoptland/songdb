# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create([
  {id: 1, name: "RZA", birth_date:"1969-07-05", country_of_origin: "United States" },
  {id: 2, name: "Method Man", birth_date:"1971-03-02", country_of_origin: "United States" },
  {id: 3, name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States" },
  {id: 4, name: "Inspectah Deck", birth_date:"1970-07-06", country_of_origin: "United States" },
  ])

Song.create([
  {id: 1, title:"C.R.E.A.M.", duration: 240 },
  ])

artists_songs = ([
  {artist_id: 1, song_id: 1},
  {artist_id: 2, song_id: 1},
  {artist_id: 3, song_id: 1},
  {artist_id: 4, song_id: 1},
  ])
