module TransactionsHelper
  def prefix_sign(transaction)
    return '+' if transaction.income_or_expense

    '-'
  end
end
