class Budget < ApplicationRecord
  belongs_to :user

  validates :non_zero

  private

  def non_zero
    self.income >= 0 && self.expense >= 0
  end
end
