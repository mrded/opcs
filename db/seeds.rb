# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts '-> CODES:'
codes = [
  {code: 'X99.7', description: 'Not known'},
  {code: 'X99.8', description: 'Outpatient procedure carried out but no appropriate OPCS-4 code available'},
  {code: 'X99.9', description: 'No outpatient procedure carried out'},
]

Code.create(codes).each do | code |
  puts 'Code: ' << code[:code]
end
