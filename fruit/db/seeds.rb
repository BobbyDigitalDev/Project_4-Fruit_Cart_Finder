# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
User.create({name: "Leslie Knope", email: "les@knope2015.com", password_digest: "waffles"})
User.create({name: "Tom Haverford", email: "tommy@e720.com", password_digest: "treatyoself"})