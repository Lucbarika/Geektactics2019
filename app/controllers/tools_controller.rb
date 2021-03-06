class ToolsController < ApplicationController
  def find
    @tool = Tool.find(params[:id])
  end
  def show
    # tool_params
    find
    @tool_feedbacks = @tool.tool_feedbacks
    @purchase = Purchase.new
  end

  def create
    @course = Course.find(params[:course_id])
    @tool = Tool.new(tool_params)
    @tool.course = @course
    @tool.user = current_user
    @tool.save!
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

  def edit
    find
  end

  def update
    edit
    @tool.update(tool_params)
    redirect_to tool_path(@tool)
  end

  def destroy
    find
    @tool.destroy
    redirect_to root_path
  end

  # def purchase_tool
  #   find
  #   # redirect_to purchase.new
  #   @purchase = Purchase.new
  #   @purchase.user = current_user
  #   @purchase.tool = @tool
  # end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :pdf_url, :audio_url, :price, :course_id)
  end
end
