class Participant < ApplicationRecord
  has_many :bets

  def sum_bets
    bets.reduce(0) do |sum, bet|
      sum += bet.money
    end
  end

  def expected_profit(principle=1000)
    (Participant.total_bets+principle) * principle / (sum_bets+principle)
  end

  def self.total_bets
    Bet.all.reduce(0) do |sum, bet|
      sum += bet.money
    end
  end
end
