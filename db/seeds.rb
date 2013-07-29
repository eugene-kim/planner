# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create a year in the days database
starting_date = Date.new(2013, 7, 1)

starting_date.upto(starting_date + 364.days) do |date|
	Day.create(date:date)
end