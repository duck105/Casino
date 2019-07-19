class AddStateToBet < ActiveRecord::Migration[5.2]
  def change
    add_column :bets, :aasm_state, :string
  end
end
