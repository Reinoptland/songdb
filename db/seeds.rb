# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gza = Artist.create(name: "GZA", birth_date:"1966-08-22", country_of_origin: "United States",)
rza = Artist.create(name: "RZA", birth_date:"1969-07-05", country_of_origin: "United States",)
mm = Artist.create(name: "Method Man", birth_date:"1971-03-02", country_of_origin: "United States",)
ins = Artist.create(name: "Inspectah Deck", birth_date:"1970-07-06", country_of_origin: "United States",)
ghost = Artist.create(name: "Ghostface Killah", birth_date:"1970-04-09", country_of_origin: "United States",)
odb = Artist.create(name: "Ol' Dirty Bastard", birth_date:"1968-11-15", country_of_origin: "United States",)
ugod = Artist.create(name: "U-God", birth_date:"1970-10-11", country_of_origin: "United States",)
chef = Artist.create(name: "Raekwon", birth_date:"1970-01-12", country_of_origin: "United States",)
masta = Artist.create(name: "Masta Killa", birth_date:"1969-08-18", country_of_origin: "United States",)

Song.create([
              {title:"Bring da Ruckus", duration: 250, artists: [rza, ghost, chef, ins, gza]},
              {title:"Shame on a Nigga", duration: 177, artists: [chef, odb, mm]},
              {title:"Clan in da Front", duration: 273, artists: [rza, gza]},
              {title:"Wu-Tang: 7th Chamber", duration: 365, artists: [chef, mm, ins, ghost, rza, odb, gza]},
              {title:"Can It Be All So Simple", duration: 413, artists: [rza, chef, ghost]},
              {title:"Da Mystery of Chessboxin'", duration: 288, artists: [mm, ugod, ins, chef, odb, ghost, masta]},
              {title:"Wu-Tang Clan Ain't Nuthing ta Fuck Wit", duration: 216, artists: [rza, ins, mm]},
              {title:"C.R.E.A.M.", duration: 252, artists: [mm, chef, ins]},
              {title:"Method Man", duration: 350, artists: [gza, mm, rza, ghost]},
              {title:"Protect Ya Neck", duration: 292, artists: [rza, mm, ins, chef, ugod, odb, ghost, gza]},
              {title:"Tearz", duration: 257, artists: [rza, ghost]},
              {title:"Wu-Tang: 7th Chamber—Part II", duration: 369, artists: [chef, mm, ins, ghost, rza, odb, gza]},
              {title:"Method Man (Skunk Mix)", duration: 192, artists: [mm]},
            ])
