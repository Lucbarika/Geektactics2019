class DashboardsController < ApplicationController
  def tutor_dashboard
    @tutor = current_user
  end

  def student_dashboard
    @student = current_user
  end
end
