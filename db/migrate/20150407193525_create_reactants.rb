class CreateReactants < ActiveRecord::Migration
  def change
    create_table :reactants do |t|
      t.boolean :starting_material
      t.float :equivalents
      t.references :entry, index: true, foreign_key: true
      t.references :reagents, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
