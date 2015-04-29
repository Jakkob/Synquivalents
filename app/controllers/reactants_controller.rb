class ReactantsController < ApplicationController
	
	before_action :find_entry
	respond_to :html, :js

	def index
		@reactants = Reactant.all
	end

	def show
		redirect_to entry_path(:entry_id => @entry.id)
	end

	def new
		@reactant = Reactant.new({ :entry_id => @entry.id })
		@reagents = Reagent.order(name: :desc)
		@reactants = Reactant.all
	end

	def edit
		@reactant = Reactant.find(params[:id])
	end

	def create
		@reactant = Reactant.create(reactant_params)
		@reactants = Reactant.all

		if @reactant.save
			redirect_to @entry
		else
			redirect_to @entry
		end
	end

	def update
		
	end

	def destroy
		@reactant = Reactant.find(params[:id])

		if @reactant.destroy
			redirect_to entry_path(@entry.id)
		else
			redirect_to '/'
		end
	end

	private
		def reactant_params
			params.require(:reactant).permit(:starting_material, :equivalents, :reagents_id, :entry_id)
		end

	def find_entry
		if params[:entry_id]
			@entry = Entry.find(params[:entry_id])
		end
	end
end
