class Budget < ApplicationRecord
  belongs_to :user

  validates :description, presence: true
  validates :amount, presence: true
  validate :non_zero?

  def all
  end

  private

  def non_zero?
    return if amount > 0

    errors.add(:amount, "Field can't be zero")
  end
end
