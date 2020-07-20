FactoryBot.define do
    factory :hour, class: Hour do
        hours       { 6 }
        description { "Ride" }
    end

    factory :random_hours, class: Hour do
        hours { Faker::Hours.hours }
        description { Faker::Hours.description }
    end
end