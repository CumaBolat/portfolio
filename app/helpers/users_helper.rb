module UsersHelper
  def current_budget(user)
    total = 0
    user.budgets.each do |b|
      if b.income_or_expense
        total += b.amount
      else
        total -= b.amount
      end
    end
    total
  end
end
