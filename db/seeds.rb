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
ToolFeedback.destroy_all
CourseFeedback.destroy_all
Purchase.destroy_all
Tool.destroy_all
Course.destroy_all
Tutor.destroy_all
Student.destroy_all
# Add new basic elements
puts "Seed generation"

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

# Students generation
5.times do
  student = Student.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
# Tutors generation
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
      course.student = student
    # Tool generation
    5.times do
      tool = Tool.new(
        name: "tool #{(1..10).to_a.sample}",
        description: lorem_ipsum,
        price: (1..10).to_a.sample * 100
          )
        tool.tutor = tutor
        tool.course = course

      # Purchases generation
      3.times do
        purchase = Purchase.new(
          )
          purchase.student = student
          purchase.tool = tool
        purchase.save!
      end

      # tool_feedback generation
      3.times do
        tool_feedback = ToolFeedback.new(
          content: lorem_ipsum
        )
        tool_feedback.student = student
        tool_feedback.tool = tool
        tool_feedback.save!
      end

      tool.save!
    end
    # Cours_feedback generation
    3.times do
      course_feedback = CourseFeedback.new(
        content: lorem_ipsum
      )
      course_feedback.course = course
      course_feedback.tutor = tutor
      course_feedback.save!
    end
    course.save!
  end
  student.save!
  tutor.save!
end
