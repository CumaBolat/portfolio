module UsersHelper
  def current_budget(user)
    total = 0
    user.transactions.each do |t|
      if t.income_or_expense
        total += t.amount
      else
        total -= t.amount
      end
    end
    total
  end
end
