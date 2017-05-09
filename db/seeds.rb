# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bike.delete_all
Entry.delete_all
Race.delete_all
Team.delete_all
Cyclist.delete_all

r1 = Race.create({name: "Tour de France"})
r2 = Race.create({name: "Tour de Yorkshire"})
r3 = Race.create({name: "The Olympics"})

t1 = Team.create({name: "Boys"})
t2 = Team.create({name: "Girls"})

Entry.create({team_id: t1.id, race_id: r1.id})
Entry.create({team_id: t1.id, race_id: r2.id})
Entry.create({team_id: t2.id, race_id: r1.id})
Entry.create({team_id: t2.id, race_id: r3.id})

c1 = Cyclist.create({name: "Bradley Wiggins", team_id: t1.id})
c2 = Cyclist.create({name: "Lance Armstrong", team_id: t1.id})
c3 = Cyclist.create({name: "Lizzie Deignan", team_id: t2.id})
c4 = Cyclist.create({name: "Laura Trott", team_id: t2.id})

Bike.create({brand: "Raleigh", cyclist_id: c1.id})
Bike.create({brand: "Specialized", cyclist_id: c2.id})
Bike.create({brand: "Giant", cyclist_id: c3.id})
Bike.create({brand: "Velo", cyclist_id: c4.id})



