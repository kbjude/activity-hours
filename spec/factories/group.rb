FactoryBot.define do
    factory :group, class: Group do
        name { Faker::Name.name } 
    end

    factory :random_group, class: Group do
        name { Faker::Name.name } 
    end
end