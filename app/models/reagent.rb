class Reagent < ActiveRecord::Base
	has_many :reactant
	has_many :entry, through: :reactant

	def reagent_name
		:name
	end
end
