class DashboardsController < ApplicationController
  def tutor_dashboard
    @tutor = current_user
  end
  def tutor_course
    @tutor_tools = current_user.tools
    @tutor_courses = @tutor_tools.courses
  end
  def student_dashboard
    @student = current_user
  end
end
