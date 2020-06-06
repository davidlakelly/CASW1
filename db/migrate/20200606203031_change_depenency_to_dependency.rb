class ChangeDepenencyToDependency < ActiveRecord::Migration[6.0]
  def change
    rename_table :depenencies, :dependencies    
  end
end
