class RemoveNullFromStartingMaterialInReactants < ActiveRecord::Migration
  def change
  	change_column_null(:reactants, :starting_material, false, false)
  end
end
