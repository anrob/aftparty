class AddVideoToAct < ActiveRecord::Migration
  def change
    add_column :acts, :videocode, :text
  end
end
