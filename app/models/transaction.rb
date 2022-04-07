class Transaction < ApplicationRecord
  belongs_to :user

  validates :description, presence: true,
              length: {minimum: 5, maximum: 255}
  validate :non_zero?

  def transaction
    self
  end

  private

  def non_zero?
    return if !amount.nil? && amount > 0

    errors.add(:amount, "Field can't be zero")
  end
end
