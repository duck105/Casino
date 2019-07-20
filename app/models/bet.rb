class Bet < ApplicationRecord
  include AASM
  
  belongs_to :participant
  validates :name, presence: true
  validates :team, presence: true
  validates :money, presence: true

  scope :paid, -> { where aasm_state: 'paid' }
  scope :ongoing, -> { where aasm_state: ['paid','created'] }


  aasm do
    state :created, initial: true
    state :paid, :refunded #paid: 已付賭金, refunded: 已領回獎金

    event :pay do
      transitions from: :created, to: :paid
    end

    event :refund do 
      transitions from: :paid, to: :refunded
    end
  end
end
