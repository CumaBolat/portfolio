module BudgetsHelper
  def prefix_sign(budget)
    return '+' if budget.income_or_expense

    '-'
  end
end
