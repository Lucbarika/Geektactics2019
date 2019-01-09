class CourseFeedbacksController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @course_feedback = CourseFeedback.new(course_feedback_params)
    @course_feedback.user = current_user
    @course_feedback.course = @course
    @course_feedback.save!
    if @course_feedback.save
      respond_to do |format|
        format.html { redirect_to course_path(@course) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'courses/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def course_feedback_params
    params.require(:course_feedback).permit(:content, :course_id, :user_id)
  end
end
