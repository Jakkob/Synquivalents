class CreateReactants < ActiveRecord::Migration
  def change
    create_table :reactants do |t|
      t.boolean :starting_material, null: false, default: false
      t.float :equivalents
      t.references :entry, index: true, foreign_key: true
      t.references :reagent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
