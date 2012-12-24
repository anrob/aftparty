class AddDescriptionToAct < ActiveRecord::Migration
  def change
    add_column :acts, :description, :text
  end
end
