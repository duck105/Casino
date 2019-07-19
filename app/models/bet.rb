class Bet < ApplicationRecord
  belongs_to :participant
  validates :name, presence: true
  validates :team, presence: true
  validates :money, presence: true

end
