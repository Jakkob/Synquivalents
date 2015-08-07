require 'rails_helper'

RSpec.describe ReagentsController, type: :controller do

	describe "GET #index" do

		let(:reagents) { Reagent.all }

		it "renders the :index view" do 
			get :index 
			expect(response).to render_template :index
		end

		it "populates an array of reagents" do 
			create_list(:reagent, 15)
			get :index 
			expect(assigns['reagents']).to eq(reagents)
		end 

	end

	describe "GET #show" do
		#pending
		it "renders a #show view for the selected :id" do
			test_reagent = create(:reagent)
			get :show, :id => test_reagent.id
			expect(assigns['reagent']).to eq(test_reagent)
		end
	end

	describe "POST #create" do
		pending
	end

end
