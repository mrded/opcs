# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

categories = []

puts '-> CATEGORIES:'
CSV.foreach Rails.root.join('db', 'import', 'categories.csv') do |row|
  categories << {
    chapter: row[0],
    name: row[1],
  }
end

Category.create(categories)
puts 'DONE!'

#####################
puts '-> CODES:'
codes = []

CSV.foreach Rails.root.join('db', 'import', 'codes.csv') do |row|
  codes << {
    name: row[0],
    description: row[1],
    category_id: Category.where(chapter: row[0][0]).first[:id]
  }
end

Code.create(codes)
puts 'DONE!'
