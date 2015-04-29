class Entry < ActiveRecord::Base
	has_many :reactant
	has_many :reagent, through: :reactant
	validates :reaction_number, presence: true
end
