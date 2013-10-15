# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

puts '-> CODES:'
codes = []

CSV.foreach Rails.root.join('db', 'import', 'codes.csv') do |row|
  codes << {
    code: row[0],
    description: row[1],
  }
end

Code.create(codes).each do | code |
  puts 'Code: ' << code[:code]
end
