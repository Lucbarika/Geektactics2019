class PurchasesController < ApplicationController
  def index
    @user = current_user
    @purchases = @user.purchases
    @sum = 0
  end
end
