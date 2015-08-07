require 'faker'

FactoryGirl.define do
  factory :reagent do |f|
    f.name { Faker::Hacker.noun }
    f.cas_num { Faker::Number.number(7).to_s }
    f.mol_weight { Faker::Number.decimal(3, 2) }
    f.phase { Faker::Hacker.noun }
    f.density { Faker::Number.decimal(1, 3) }
    f.molarity { Faker::Number.decimal(1, 3) }

  end

end
