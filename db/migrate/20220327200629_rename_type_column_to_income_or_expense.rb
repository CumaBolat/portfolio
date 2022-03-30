class RenameTypeColumnToIncomeOrExpense < ActiveRecord::Migration[6.1]
  def change
    rename_column :budgets, :type, :income_or_expense
  end
end
