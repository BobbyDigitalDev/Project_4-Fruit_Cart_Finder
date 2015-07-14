class ChangeStateColumnName < ActiveRecord::Migration
  def change 
    rename_column :states, :state_name, :name
  end
end
