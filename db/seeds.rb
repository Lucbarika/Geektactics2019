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
User.destroy_all
# Add new basic elements
puts "Seed generation"
categories = ["math", "physics", "finance", "economy", "informatic", "literature", "language", "phylosophy", "sociology"]
lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

# Users generation
# 3 student
2.times do
user = User.new(
  first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "000000",
    biographie: lorem_ipsum,
    teacher: false,
    student: true
  )

2.times do
course = Course.new(
  title: "course #{(1..10).to_a.sample}",
  description: lorem_ipsum,
  category: categories.sample,
  code: Faker::Code.nric
      )

3.times do
  course_feedback = CourseFeedback.new(
    content: lorem_ipsum
  )
  course_feedback.course = course
  course_feedback.user = user
  course_feedback.save!
end
course.save!
end

user.save!
end

# 3 teacher
2.times do
teacher = User.new(
  first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "000000",
    biographie: lorem_ipsum,
    teacher: true,
    student: false
  )

    5.times do
      tool = Tool.new(
        name: "tool #{(1..10).to_a.sample}",
        description: lorem_ipsum,
        price: (1..10).to_a.sample * 100,
        pdf_url: "pdf_url_test",
        video_url: "https://www.youtube.com/embed/fKFbnhcNnjE?list=PL6AuTaocqrRP_tnkjSdjpFhnQeTjoxkSx"
          )
        tool.user = teacher
        tool.course = [Course.last, Course.first].sample

        2.times do
        tool_feedback = ToolFeedback.new(
          content: lorem_ipsum
        )
        tool_feedback.user = [User.first, User.last].sample
        tool_feedback.tool = tool
        tool_feedback.save!
      end
    tool.save!
  end
teacher.save!
end

# 2 both
2.times do
student_teacher = User.new(
  first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "000000",
    biographie: lorem_ipsum,
    teacher: true,
    student: true
  )

tool = Tool.new(
        name: "tool #{(1..10).to_a.sample}",
        description: lorem_ipsum,
        price: (1..10).to_a.sample * 100,
        pdf_url: "pdf_url_test",
        video_url: "https://www.youtube.com/embed/fKFbnhcNnjE?list=PL6AuTaocqrRP_tnkjSdjpFhnQeTjoxkSx"
          )
        tool.user = student_teacher
        tool.course = [Course.last, Course.first].sample
    tool.save!

course = Course.new(
  title: "course #{(1..10).to_a.sample}",
  description: lorem_ipsum,
  category: categories.sample,
  code: Faker::Code.nric
      )
  # course.user = student_teacher
course.save!

student_teacher.save!
end

# purchases
3.times do
  purchase = Purchase.new(
    )
    purchase.user = [User.last, User.first].sample
    purchase.tool = [Tool.last, Tool.first].sample
  purchase.save!
end


# tool for course index 32

# 3.times do
#   tool = Tool.new(
#     name: "tool #{(1..10).to_a.sample}",
#         description: lorem_ipsum,
#         price: (1..10).to_a.sample * 100,
#         pdf_url: "pdf_url_test",
#         audio_url: "audio_url_test",
#         user_id: User.last.id,
#         course_id: 32
#     )
# tool.save!
# end
