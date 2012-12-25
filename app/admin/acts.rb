ActiveAdmin.register Act do
  index do
      column :name
      column :actcode
      column :premium
      default_actions
    end
end
