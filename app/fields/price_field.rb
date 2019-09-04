require "administrate/field/base"

class PriceField < Administrate::Field::Base
  def to_s
    "#{resource.participant.expected_profit(resource.money)} 元"
  end
end
