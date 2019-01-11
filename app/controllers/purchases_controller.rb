class PurchasesController < ApplicationController
  def index
    @user = current_user
    @purchases = @user.purchases
    @sum = 0
  end

  def find_tool
    @tool = Tool.find(params[:tool_id])
  end

  def create
    find_tool
    # redirect_to purchase.new
    @purchase = Purchase.new
    @purchase.user = current_user
    @purchase.tool = @tool
    @purchase.save!
  end

  def params_purchase
    params.require(:purchase).permit(:tool_id)
  end
end
