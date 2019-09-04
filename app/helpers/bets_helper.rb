module BetsHelper
  def render_confirm_message(bet)
    participant = bet.participant
    "確認是#{participant.name}贏？領取獎金#{participant.expected_profit(bet.money)}元"
  end
end
