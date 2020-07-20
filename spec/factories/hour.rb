FactoryBot.define do
    factory :hour, class: Hour do
        hours { Faker::Hours.hours }
        description { Faker::Description.description } 
    end

    factory :random_hour, class: Hour do
        hours { Faker::Hours.hours }
        description { Faker::Description.description }  
    end
end