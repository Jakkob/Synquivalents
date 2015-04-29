class ReagentsController < ApplicationController
  def index
    @reagents = Reagent.all
  end

  def show
  	@reagent = Reagent.find(params[:id])
  end

  def new
    @reagent = Reagent.new
  end

  def edit
    @reagent = Reagent.find(params[:id])
  end

  def create
    @reagent = Reagent.new(reagent_params)

    if @reagent.save
      redirect_to @reagent
    else
      render 'new'
    end
  end

  def update
  	@reagent = Reagent.find(params[:id])
  	
  	if @reagent.update_attributes(reagent_params)
  		redirect_to @reagent
  	else
  		render 'edit'
  	end
  end

  def destroy
    @reagent = Reagent.find(params[:id])

    @reagent.destroy

    redirect_to reagentsCAS Number_path
  end

  private
  	def reagent_params
  		params.require(:reagent).permit(:name, :cas_num, :mol_weight, :phase, :molarity, :density)
  	end
end
