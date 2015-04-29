class Reactant < ActiveRecord::Base
  belongs_to :entry
  belongs_to :reagent
end
