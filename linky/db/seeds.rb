# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(login: 'alice', password: 'alice')
User.create(login: 'bob', password: 'bob')
User.create(login: 'charlie', password: 'charlie')

Link.create(title: 'Google', url: 'http://google.com', user_id: 1)

Link.create(title: 'Use Panda', url: 'http://usepanda.com', user_id: 2)
Link.create(title: 'Facebook', url: 'http://www.facebook.com', user_id: 2)

Link.create(title: 'Wikipedia', url: 'https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal', user_id: 3)
