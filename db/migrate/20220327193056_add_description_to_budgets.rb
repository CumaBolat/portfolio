class AddDescriptionToBudgets < ActiveRecord::Migration[6.1]
  def change
    remove_column :budgets, :income
    remove_column :budgets, :expense
    remove_column :budgets, :current_budget

    add_column :budgets, :description, :text
    add_column :budgets, :amount, :integer
    add_column :budgets, :type, :boolean
  end
end
