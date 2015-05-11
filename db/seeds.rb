# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.create(title: 'Article 1', text: 'Text 1')
r1= Role.create({name: "Regular", description: "Can read items"})
r2 = Roel.create({name: "Admin", description: "Admin user"})

# u1 = User.create({})