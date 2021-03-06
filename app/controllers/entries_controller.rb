class EntriesController < ApplicationController

  respond_to :html, :js

  def index
    @entries = Entry.all
  end

  def show
  	@entry = Entry.find(params[:id])

    @reactants = Reactant.all

    @reagent = Reagent.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  def update
  	@entry = Entry.find(params[:id])
  	
  	if @entry.update_attributes(entry_params)
  		redirect_to @entry
  	else
  		render 'edit'
  	end
  end

  def destroy
    @entry = Entry.find(params[:id])

    @entry.destroy

    redirect_to entries_path
  end

  private
  	def entry_params
  		params.require(:entry).permit(:reaction_number, :starting_material, :reaction_time, :procedure)
  	end
end