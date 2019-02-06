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
math_derivation = Course.new(
  title: "Derivation",
  description: "lorem_ipsum",
  category: "Maths",
  code: "math0001"
  )
math_derivation.save!

math_matrix = Course.new(
  title: "Matrix",
  description: "lorem_ipsum",
  category: "Maths",
  code: "math0002"
  )
math_matrix.save!

phy_light = Course.new(
  title: "Lighting theory",
  description: "lorem_ipsum",
  category: "Physiques",
  code: "phy0001"
  )
phy_light.save!

phy_nuclear = Course.new(
  title: "Nuclear and radioactivity",
  description: "lorem_ipsum",
  category: "Physiques",
  code: "phy0002"
  )
phy_nuclear.save!

french = Course.new(
  title: "French class",
  description: "lorem_ipsum",
  category: "Language",
  code: "lan0001"
  )
french.save!

chinese = Course.new(
  title: "Chinese class",
  description: "lorem_ipsum",
  category: "Language",
  code: "lan0002"
  )
chinese.save!
