require 'rails_helper'

RSpec.describe Reagent, type: :model do

	before(:context) do
		#@spec_reagent = Reagent.create({:name => "Chemical", :mol_weight => 123.45, :cas_num => "123-45-6"})
		@spec_reagent = build(:reagent)
	end

	it "validates for the presence of :name" do
		expect validate_presence_of(:name)
	end

	it "returns the name as a string" do
		expect(@spec_reagent.name).to be_a(String)
	end

	it "returns the cas_num as a string" do
		expect(@spec_reagent.cas_num).to be_a(String)
	end

	it "returns the mol_weight as a number" do
		expect(@spec_reagent.mol_weight).to be_a(Float)
	end

	after(:context) { @spec_reagent.destroy }
end
