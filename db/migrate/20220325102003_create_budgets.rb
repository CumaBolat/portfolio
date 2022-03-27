class CreateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.integer :current_budget
      t.integer :expense
      t.integer :income

      t.timestamps
    end
  end
end
