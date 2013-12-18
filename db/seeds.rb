# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Team.create(name: 'Test1' , arena: 'Xbox' , logo: 'test.jpg' )
 Team.create(name: 'Test2' , arena: 'Xbox' , logo: 'test.jpg' )

 Table.create(team_id: 12 , points: '0')
 Table.create(team_id: 13 , points: '0')

