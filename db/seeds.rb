# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RoomLayout.create([
  {name: 'bedroom', description: 'desc_a', width: 3, height: 4},
  {name: 'living room', description: 'desc_b', width: 4, height: 5}
])
