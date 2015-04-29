class AddDefaultValueToReactants < ActiveRecord::Migration
  def change
  	change_column_default :reactants, :starting_material, false
  end
end
