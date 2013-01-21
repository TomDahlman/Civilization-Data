# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Clearing the all entries in the tables, if any."
Civilization.destroy_all
Wonder.destroy_all
Leader.destroy_all

a = Civilization.create(:name => "Egypt")
b = Civilization.create(:name => "Greece")
c = Civilization.create(:name => "China")
d = Civilization.create(:name => "Maya")

m = Wonder.create(:name => "The Pyramids")
n = Wonder.create(:name => "The Hanging Gardens")
o = Wonder.create(:name => "The Great Wall")
p = Wonder.create(:name => "The Great Library")


Leader.create(:name => "Ramsese II", :civilization_id => a.id)
Leader.create(:name => "Alexander", :civilization_id => b.id)
Leader.create(:name => "Wu Xutan", :civilization_id => c.id)
Leader.create(:name => "Pacal", :civilization_id => d.id)

puts "Creating #{Civilization.count} entries in the Civilization's table."
puts "and . . ."
puts "Creating #{Wonder.count} entries in the Wonder's table."
puts "and . . ."
puts "Creating #{Leader.count} entries in the Leader's table."