# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database"
# Remove all the elements of the DB
Course.destroy_all
Student.destroy_all
Tutor.destroy_all
# Add new basic elements
puts "Seed generation"

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

# Students generation
10.times do
  student = Student.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
  student.save!
end
# Tutors generation
5.times do
  tutor = Tutor.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
  # Courses generation
  3.times do
    course = Course.new(
      name: "course #{(1..10).to_a.sample}"
    )
    course.tutor = tutor
    # Product generation
    5.times do
      product = Product.new(
        name: "product #{(1..10).to_a.sample}",
        description: lorem_ipsum,
        price: (1..10).to_a.sample * 100
      )
      product.tutor = tutor
      product.course = course
      # product_feedback generation
      5.times do
        product_feedback = ProductFeedback.new(
          content: lorem_ipsum
        )
        product_feedback.student = student
        product_feedback.course = course
        product_feedback.save!
      end
      product.save!
    end
    # Cours_feedback generation
    5.times do
      course_feedback = CourseFeedback.new(
        content: lorem_ipsum
      )
      course_feedback.course = course
      course_feedback.student = student
      course_feedback.save!
    end
    course.save!
  end
  tutor.save!
end
