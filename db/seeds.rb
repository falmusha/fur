# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create([
  {name: 'bedrooms', description: 'some_bedrooms'},
  {name: 'livingrooms', description: 'some_bedrooms'}
])

5.times do |i|
  RoomLayout.create({
           name: "bedroom_#{i}",
    description: "desc_b_#{i}",
          width: 3*i,
         height: 4*i,
     project_id: Project.first.id
  })
end

5.times do |i|
  RoomLayout.create({
           name: "livingroom_#{i}",
    description: "desc_l_#{i}",
          width: i,
         height: i,
     project_id: Project.last.id
  })
end
