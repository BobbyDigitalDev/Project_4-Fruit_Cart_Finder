# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.delete_all
# User.create({name: "Leslie Knope", email: "les@knope2015.com", password: "waffles"})
# User.create({name: "Tom Haverford", email: "tommy@e720.com", password: "treatyoself"})

Cart.delete_all
Cart.create({description: "My fav in the whole area. super friendly vendor.", lat: 40.755313 , lon: -73.973238, address: "517 Lexington Ave", city: "N.Y.", state: "New York", zip: 10017 , user_id: 1 })
Cart.create({description: "Always fresh. This guy is great.", lat: 40.768057, lon: -73.985571, address: "363 W 57th", city: "N.Y.", state: "New York", zip: 10019 , user_id: 2 })
Cart.create({description: "Freshest bananas on the west side.", lat: 40.769204, lon: -73.988449, address: "477 W 57th St", city: "N.Y.", state: "New York", zip: 10019, user_id: 3})

# State.delete_all
# records = JSON.parse(File.read('./states.json'))
# records.each do |record|
#   State.create!(record)
# end