class DashboardsController < ApplicationController
  def tutor_dashboard
    @tutor = current_user
    tutor_course
  end

  def tutor_course
    tutor = current_user
    tools = tutor.tools
    @tutor_courses = []
    tools.each do |tool|
      @tutor_courses << tool.course
    end
    @tutor_courses.uniq!
  end

  def student_dashboard
    @student = current_user
    student_courses
  end

  def student_purchases
    student = current_user
    @purchases = student.purchases
  end

  def student_tools
    student_purchases
    @student_tools = []
    @purchases.each do |purchase|
      @student_tools << purchase.tool
    end
    @student_tools.uniq!
  end

  def student_courses
    student_tools
    @student_courses = []
    @student_tools.each do |tool|
      @student_courses << tool.course
    end
    @student_courses.uniq!
  end
end
