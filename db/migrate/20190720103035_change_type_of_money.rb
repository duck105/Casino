class ChangeTypeOfMoney < ActiveRecord::Migration[5.2]
  def change
    change_column :bets, :money, :bigint
    change_column :deposits, :money, :bigint
  end
end
