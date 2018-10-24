# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

classes = ["Sixième", "Cinquième", "Quatrième", "Troisième"]
#
classes.each do |sc|
  cl = SchoolClass.create!(name: sc)
end


require 'faker'

100.times do
  student = Student.create!(first_name: Faker::DragonBall.character, last_name: Faker::Music.instrument, school_class_id: Random.new.rand(1..4))
end
