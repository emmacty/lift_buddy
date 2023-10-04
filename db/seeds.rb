# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
WorkoutExercise.destroy_all
Exercise.destroy_all
puts "Database cleaned!"

puts "Creating exercises..."

Exercise.create!(
  name: "Deadlift classique"
)

Exercise.create!(
  name: "Deadlift roumain"
)

Exercise.create!(
  name: "Hip trust"
)

Exercise.create!(
  name: "Fentes bulgares"
)

Exercise.create!(
  name: "Presse unilatérale"
)

Exercise.create!(
  name: "Relevé de buste"
)

puts "Exercises created!"
