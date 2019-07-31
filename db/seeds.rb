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
        privilege: "standard",
        description: "standard user. free account."
    },
    {
        privilege: "premium",
        description: "paid tier. benefit TBD"
    }
]

roles.each do |role|
    Role.create(role)
end

users = [
    {
        role_id: 1,
        location_id: 1,
        email: "adam@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 2,
        email: "belinda@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 3,
        email: "charlie@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 4,
        email: "dylan@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 5,
        email: "elise@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 6,
        email: "frank@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 7,
        email: "geoff@gmail.com",
        encrypted_password: "12345"
    },
    {
        role_id: 1,
        location_id: 8,
        email: "harmony@gmail.com",
        encrypted_password: "12345"
    }
]

users.each do |user|
    User.create(user)
end

profiles = [
    {
        user_id: 1,
        name: "Adam Ascot"
    },
    {
        user_id: 2,
        name: "Belinda Bisk"
    },
    {
        user_id: 3,
        name: "Charlie Camp"
    },
    {
        user_id: 4,
        name: "Dylan Delta"
    },
    {
        user_id: 5,
        name: "Elise Etto"
    },
    {
        user_id: 6,
        name: "Frank Fuller"
    },
    {
        user_id: 7,
        name: "Geoff Goon"
    },
    {
        user_id: 8,
        name: "Harmony Hattich"
    }
]

userRating = [
    {
        reviewee_id: 1,
        reviewer_id: 2,
        rating: 5
    },
    {
        reviewee_id: 1,
        reviewer_id: 3,
        rating: 3
    },
    {
        reviewee_id: 2,
        reviewer_id: 1,
        rating: 4
    },
    {
        reviewee_id: 3,
        reviewer_id: 8,
        rating: 5
    }
]

