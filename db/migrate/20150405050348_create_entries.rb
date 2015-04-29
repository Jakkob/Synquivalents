class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.string :reaction_number
    	t.float :reaction_time
    	t.string :solvent
    	t.text :procedure
      t.timestamps null: false
    end
  end
end
