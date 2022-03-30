class BudgetsController < ApplicationController
  before_action :logged_in_user

  def new
    @budget = Budget.new
    @budgets = current_user.budgets.order('budgets.created_at DESC').paginate(page: params[:page], per_page: 20)
  end

  def create
    @budget = Budget.new(budget_params)
    @budget.user = current_user
    @budgets = current_user.budgets.order('budgets.created_at DESC').paginate(page: params[:page], per_page: 20)

    flash[:success] = if @budget.save
                        'Amount was successfully added'
                      else
                        'Adamakıllı value ver amcık'
                      end

    redirect_back fallback_location: root_path
  end

  private

  def budget_params
    params.require(:budget).permit(:description, :amount, :income_or_expense)
  end
end
