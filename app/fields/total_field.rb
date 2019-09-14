require "administrate/field/base"

class TotalField < Administrate::Field::Base
  def to_s
    rate = Setting.find_by(:key => "interest_rate").value.to_f
    "#{(resource.count_interest(rate) + resource.money).floor} 元"
  end
end
