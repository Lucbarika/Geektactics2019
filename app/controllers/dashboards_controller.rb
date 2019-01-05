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
  end
end
