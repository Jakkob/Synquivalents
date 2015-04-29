class CreateReagents < ActiveRecord::Migration
  def change
    create_table :reagents do |t|
      t.string :name
      t.string :cas_num
      t.float :mol_weight
      t.string :phase
      t.float :density
      t.float :molarity

      t.timestamps null: false
    end
  end
end
