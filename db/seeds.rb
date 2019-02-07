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

teacher1 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: true,
  student: false,
  )
teacher1.save!

teacher2 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: true,
  student: false,
  )
teacher2.save!

teacher3 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: true,
  student: false,
  )
teacher3.save!

teacher4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: true,
  student: false,
  )
teacher4.save!

teachers = [user_test_mvp, teacher1, teacher2, teacher3, teacher4]

student1 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: false,
  student: true,
  )
student1.save!

student2 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: false,
  student: true,
  )
student2.save!

student3 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: false,
  student: true,
  )
student3.save!

student4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "000000",
  biography: lorem_ipsum,
  teacher: false,
  student: true,
  )
student4.save!

students = [user_test_mvp, student1, student2, student3, student4]
# Course generation
math_derivation = Course.new(
  title: "Derivation",
  description: "lorem_ipsum",
  category: "Maths",
  code: "math0001"
  )
math_derivation.save!
# Tools
  tool_math_derivation1 = Tool.new(
        name: "Derivation Basic",
        description: lorem_ipsum,
        price: (1..10).to_a.sample * 100,
        pdf_url: "pdf_url_test",
        video_url: "https://www.youtube.com/embed/fKFbnhcNnjE?list=PL6AuTaocqrRP_tnkjSdjpFhnQeTjoxkSx"
          )
  tool.user =
  tool.course =
  tool_math_derivation1.save!



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

literature = Course.new(
  title: "Literature",
  description: "lorem_ipsum",
  category: "Language",
  code: "lan0003"
  )
literature.save!

economy_macro = Course.new(
  title: "Macro Economy",
  description: "lorem_ipsum",
  category: "Economy",
  code: "eco0001"
  )
economy_macro.save!

economy_micro = Course.new(
  title: "Micro Economy",
  description: "lorem_ipsum",
  category: "Economy",
  code: "eco0002"
  )
economy_micro.save!

classical_music = Course.new(
  title: "Classical Music Basic",
  description: "lorem_ipsum",
  category: "Music",
  code: "mus0001"
  )
classical_music.save!

ruby_coding = Course.new(
  title: "Ruby and Rails",
  description: "lorem_ipsum",
  category: "informatique",
  code: "inf0001"
  )
ruby_coding.save!

python_coding = Course.new(
  title: "Python",
  description: "lorem_ipsum",
  category: "informatique",
  code: "inf0003"
  )
python_coding.save!

front_end = Course.new(
  title: "Front End",
  description: "lorem_ipsum",
  category: "informatique",
  code: "inf0004"
  )
front_end.save!
