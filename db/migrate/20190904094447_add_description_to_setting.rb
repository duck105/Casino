class AddDescriptionToSetting < ActiveRecord::Migration[5.2]
  def change
    add_column :settings, :description, :string
  end
end
