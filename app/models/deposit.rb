class Deposit < ApplicationRecord
  validates :name, presence: true
  validates :team, presence: true
  validates :money, presence: true

  def count_interest
    minutes_passed = ((Time.now - created_at) / 60).ceil
    return money * (0.1) * minutes_passed
  end
end
