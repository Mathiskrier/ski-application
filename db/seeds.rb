# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
SkiSpot.destroy_all
SkiSpot.reset_pk_sequence
puts "old spots destroyed"
Report.destroy_all
Report.reset_pk_sequence
puts "old reports destroyed"
axamer = SkiSpot.create(location_name: 'Axamer Lizum', region: 'tirol')
patscher = SkiSpot.create(location_name: 'Patscherkofel', region: 'tirol')
nordkette = SkiSpot.create(location_name: 'Nordkette', region: 'tirol')
glungezer = SkiSpot.create(location_name: 'Glungezer', region: 'tirol')
schlick = SkiSpot.create(location_name: 'Schlick2000', region: 'tirol')
seefeld = SkiSpot.create(location_name: 'Seefeld', region: 'tirol')
kühtai = SkiSpot.create(location_name: 'Kühtai', region: 'tirol')

brandnertal = SkiSpot.create(location_name: 'brandnertal', region: 'vorarlberg')
damüls = SkiSpot.create(location_name: 'damüls', region: 'vorarlberg')
mellau = SkiSpot.create(location_name: 'mellau', region: 'vorarlberg')
silvretta = SkiSpot.create(location_name: 'silvretta', region: 'vorarlberg')
montafon = SkiSpot.create(location_name: 'montafon', region: 'vorarlberg')
sonnenkopf = SkiSpot.create(location_name: 'sonnenkopf', region: 'vorarlberg')

puts "skispots created"

report1 = Report.create(comment: "very good conditions today, a little bit icy tough!", user_id: 4, ski_spot_id: 1)
report2 = Report.create(comment: "awesome, still groomers", user_id: 4, ski_spot_id: 1)
report3 = Report.create(comment: "groomed and super grippy!", user_id: 4, ski_spot_id: 1)

puts "reports created"
