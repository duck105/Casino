require "administrate/field/base"

class TotalField < Administrate::Field::Base
  def to_s
    "#{(resource.count_interest + resource.money).floor} 元"
  end
end
