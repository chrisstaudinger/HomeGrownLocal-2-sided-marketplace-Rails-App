# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



states = [
    {
        state: "Victoria",
    },
    {
        state: "Queensland",
    },
    {
        state: "New South Wales"
    },
    {
        state: "Western Australia"
    },
    {
        state: "South Australia"
    },
    {
        state: "Northern Territory"
    },
    {
        state: "Tasmania"
    },
    {
        state: "Australain Capital Territory"
    }
]

states.each do |state|
    State.create(state)
end

cities = [
    {
        city: "Melbourne",
    },
    {
        city: "Brisbane",
    },
    {
        city: "Sydney"
    },
    {
        city: "Perth"
    },
    {
        city: "Adelaide"
    },
    {
        city: "Darwin"
    },
    {
        city: "Hobart"
    },
    {
        city: "Canberra"
    }
]

cities.each do |city|
    City.create(city)
end

locations = [
    {
        postcode: "3141",
        suburb: "South Yarra",
        city_id: 1
    },
    {
        postcode: "4169",
        suburb: "Kangaroo Point",
        city_id: 2
    },
    {
        postcode: "2026",
        suburb: "Bondi",
        city_id: 3
    },
    {
        postcode: "6153",
        suburb: "Applecross",
        city_id: 4
    },
    {
        postcode: "5015",
        suburb: "Port Adelaide",
        city_id: 5
    },
    {
        postcode: "0810",
        suburb: "Coconut Grove",
        city_id: 6
    },
    {
        postcode: "7005",
        suburb: "Sandy Bay",
        city_id: 7
    },
    {
        postcode: "2601",
        suburb: "Acton",
        city_id: 8
    }
]

locations.each do |location|
    Location.create(location)
end

roles = [
    {
        name: "standard",
        privilege: "",
        description: ""
    }
]
