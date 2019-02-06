require 'faker'

puts "Cleaning database"
# Remove all the elements of the DB
ToolFeedback.destroy_all
CourseFeedback.destroy_all
Purchase.destroy_all
Tool.destroy_all
Course.destroy_all
User.destroy_all
# Add new basic elements
puts "Seed generation"

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Users generation
user_test_mvp = User.new(
  first_name: "John",
  last_name: "Doe",
  email: "john.doe@email.com",
  password: "000000",
  biography: lorem_ipsum,
  teacher: true,
  student: true,
  )
user_test_mvp.save!
# Course generation
Math_derivation = Course.new(
  )
