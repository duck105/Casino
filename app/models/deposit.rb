class Deposit < ApplicationRecord
  validates :name, presence: true
  validates :team, presence: true
  validates :money, presence: true

  def count_interest(rate = 0.1)
    minutes_passed = ((Time.now - created_at) / 60).floor
    return money * rate * minutes_passed
  end
end
