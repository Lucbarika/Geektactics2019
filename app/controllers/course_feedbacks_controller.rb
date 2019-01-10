class CourseFeedbacksController < ApplicationController
  def find
    @course_feedback = CourseFeedback.find(params[:id])
  end
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

  def edit
    @course_feedback = CourseFeedback.find(params[:course_id])
  end

  def update
    find
    @course_feedback.update(course_feedback_params)
    @course = @course_feedback.course
    redirect_to course_path(@course)
  end

  def destroy
    find
    @course_feedback.destroy
    redirect_to course_path(@course)
  end

  private

  def course_feedback_params
    params.require(:course_feedback).permit(:content, :course_id, :user_id)
  end
end
