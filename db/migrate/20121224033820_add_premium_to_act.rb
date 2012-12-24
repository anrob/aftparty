class AddPremiumToAct < ActiveRecord::Migration
  def change
    add_column :acts, :premium, :boolean
  end
end
