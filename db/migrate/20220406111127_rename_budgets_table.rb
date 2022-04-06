class RenameBudgetsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :budgets, :transactions
  end
end
