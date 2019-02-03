class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
    @tool = Tool.new
    @course_feedback = CourseFeedback.new
    tools_course_index
    team
    @course_feedbacks = @course.course_feedbacks
  end

  # method which shows all the tools for one particular course on the course/show page
  def tools_course_index
    @course = Course.find(params[:id])
    @tools = @course.tools
  end

  def team
    tools_course_index
    @team = []
    @tools.each do |tool|
      member = "#{tool.user.first_name} #{tool.user.last_name}"
      @team << member
    end
    @team.uniq!
  end
  private

  def course_params
    params.require(:course).permit(:user_id)
  end
end

