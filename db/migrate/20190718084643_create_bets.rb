class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.string :name
      t.string :team
      t.integer :money
      t.references :participant, index: true, foreign_key: true

      t.timestamps
    end
  end
end
