class ToolsController < ApplicationController
  def show
    # tool_params
    @tool = Tool.find(params[:id])
    @tool_feedbacks = @tool.tool_feedbacks
  end

  def create
    @course = Course.find(params[:course_id])
    @tool = Tool.new(tool_params)
    @tool.course = @course
    @tool.user = current_user
    if @tool.save
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

  def tool_params
    params.require(:tool).permit(:name, :description, :pdf_url, :audio_url, :price)
  end
end
