# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

workshops = []

10.times do
  workshops << Workshop.new(
    name: Faker::Educator.course_name,
    description: Faker::Lorem.paragraphs,
    start_date: Date.today + 2.days,
    end_date: Date.today + 7.days,
    start_time: "10:00 AM",
    end_time: "3:00 PM",
    total_sits: 100,
    remaining_sits: 100,
    registration_fee: 1500) 
end

Workshop.import workshops
puts 'Workshop Created'