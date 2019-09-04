module BetsHelper
  def render_confirm_message(bet)
    participant = bet.participant
    "確認是No. #{participant.id}#{participant.name}贏？領取獎金#{participant.expected_profit(bet.money)}元"
  end
end
