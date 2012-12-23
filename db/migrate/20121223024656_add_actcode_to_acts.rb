class AddActcodeToActs < ActiveRecord::Migration
  def change
    add_column :acts, :actcode, :string
  end
end
