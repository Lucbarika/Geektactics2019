class ToolsController < ApplicationController
  def show
    # tool_params
    @tool = Tool.find(params[:id])
    @tool_feedbacks = @tool.tool_feedbacks
  end

  private

  def tool_params
    params.require(:tool).permit(:id)
  end
end
