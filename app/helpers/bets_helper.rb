module BetsHelper
  def render_confirm_message(bet)
    '確認是#{bet.participant.name}贏？領取獎金#{bet.participant.expected_profit(bet.money)}'
  end
end
