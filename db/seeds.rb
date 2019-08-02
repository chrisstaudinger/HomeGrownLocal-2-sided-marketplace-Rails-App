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

cities = [
    {
        city: "Melbourne",
        state_id: 1
    },
    {
        city: "Brisbane",
        state_id: 2
    },
    {
        city: "Sydney",
        state_id: 3
    },
    {
        city: "Perth",
        state_id: 4
    },
    {
        city: "Adelaide",
        state_id: 5
    },
    {
        city: "Darwin",
        state_id: 6
    },
    {
        city: "Hobart",
        state_id: 7
    },
    {
        city: "Canberra",
        state_id: 8
    }
]

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

users = [
    {
        role_id: 1,
        location_id: 1,
        email: "adam@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 2,
        email: "belinda@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 3,
        email: "charlie@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 4,
        email: "dylan@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 5,
        email: "elise@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 6,
        email: "frank@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 7,
        email: "geoff@gmail.com",
        password: "123456"
    },
    {
        role_id: 1,
        location_id: 8,
        email: "harmony@gmail.com",
        password: "123456"
    }
]

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

user_ratings = [
    {
        reviewee_id: 1,
        reviewer_id: 2,
        rating: 5.0
    },
    {
        reviewee_id: 1,
        reviewer_id: 3,
        rating: 3.0
    },
    {
        reviewee_id: 2,
        reviewer_id: 1,
        rating: 4.0
    },
    {
        reviewee_id: 3,
        reviewer_id: 8,
        rating: 5.0
    }
]

item_categories = [
    {
        name: "Fruits"
    },
    {
        name: "Vegetables"
    },
    {
        name: "Relishes"
    },
    {
        name: "Home Made Goods"
    },
    {
        name: "Herbs & Spices"
    },
    {
        name: "Eggs"
    }
]

measurements = [
    {
        unit: "Kilograms"
    },
    {
        unit: "Grams"
    },
    {
        unit: "Pieces"
    },
    {
        unit: "Litres"
    },
    {
        unit: "Millilitres"
    }
]

items = [
    {
        item_category_id: 1,
        user_id: 1,
        name: "Mt Fuji Apples",
        description: "Organic apples from my garden. No pesticides",
        price: 1.0,
        measurement_id: 3 
    },
    {
        item_category_id: 2,
        user_id: 2,
        name: "Beetroot",
        description: "Organic fresh beetroot. No pesticides or sprays.",
        price: 8.5,
        measurement_id: 1 
    },
    {
        item_category_id: 3,
        user_id: 3,
        name: "Chilli Jam 100g Jars",
        description: "Try my famous Chilli Jam. The family recipe has been passed down three generations. 100mg jars.",
        price: 7.99,
        measurement_id: 3 
    },
    {
        item_category_id: 4,
        user_id: 4,
        name: "Almond Milk",
        description: "Made from organic almonds. No perservatives added.",
        price: 4.99,
        measurement_id: 4
    },
    {
        item_category_id: 5,
        user_id: 5,
        name: "Coriander Bunches",
        description: "Grown in my veggie patch.",
        price: 3.99,
        measurement_id: 3
    },
    {
        item_category_id: 6,
        user_id: 6,
        name: "Free Range Eggs",
        description: "The eggs our hens lay usually weigh in at around 700g per dozen. They roam free range in our backyard. They are food scraps and grain.",
        price: 0.5,
        measurement_id: 3
    }
]

item_reviews = [
    {
        item_id: 1,
        reviewer_id: 2,
        message: "Deliciously sweet and crunchy. Will definitely be buying again!",
        rating: 5.0
    },
    {
        item_id: 2,
        reviewer_id: 3,
        message: "Nice to get that are organic without having to pay a small fortune. I Recommend this product and seller.",
        rating: 4.0
    },
    {
        item_id: 3,
        reviewer_id: 4,
        message: "Charlie's Chilli Jam is amazing!! It's explosive with tones of sweetness and spice.",
        rating: 5.0
    },
    {
        item_id: 4,
        reviewer_id: 5,
        message: "Will be buying again. The strength is so much more than Woolworths and Coles. Once you trying home made almond milk you really see the differnce.",
        rating: 5.0
    },
    {
        item_id: 1,
        reviewer_id: 6,
        message: "Decent apples. Crunchy and sweet",
        rating: 4.0
    }
]

watchlists = [
    {
        user_id: 1
    },
    {
        user_id: 2
    },
    {
        user_id: 3
    },
    {
        user_id: 4
    },
    {
        user_id: 5
    },
    {
        user_id: 6
    }
]

watchitems = [
    {
        item_id: 1,
        watchlist_id: 2
    },
    {
        item_id: 2,
        watchlist_id: 3
    },
    {
        item_id: 3,
        watchlist_id: 4
    },
    {
        item_id: 4,
        watchlist_id: 5
    },
    {
        item_id: 4,
        watchlist_id: 6
    },
    {
        item_id: 5,
        watchlist_id: 6
    }
]

orders = [
    {
        user_id: 1
    },
    {
        user_id: 2
    },
    {
        user_id: 3
    },
    {
        user_id: 4
    },
    {
        user_id: 5
    },
    {
        user_id: 6
    }
]

requests = [
{
    item_id: 1,
    order_id: 2,
    quantity: 10.0
},
{
    item_id: 2,
    order_id: 3,
    quantity: 0.5
},
{
    item_id: 3,
    order_id: 4,
    quantity: 1.0
},
{
    item_id: 4,
    order_id: 5,
    quantity: 0.5
},
{
    item_id: 4,
    order_id: 6,
    quantity: 2.0
},
{
    item_id: 5,
    order_id: 6,
    quantity: 1.0
}
]


states.each do |state|
    a = State.create(state)
    a.save!
end

cities.each do |city|
    a = City.create(city)
    a.save!
end

locations.each do |location|
    a = Location.create(location)
    a.save!
end

roles.each do |role|
    a = Role.create(role)
    a.save!
end

users.each do |user|
    a = User.create(user)
    a.save!
end

profiles.each do |profile|
    a = Profile.create(profile)
    a.save!
end

user_ratings.each do |user_rating|
    a = UserRating.create(user_rating)
    a.save!
end

item_categories.each do |item_category|
    a = ItemCategory.create(item_category)
    a.save!
end

measurements.each do |measurement|
    a = Measurement.create(measurement)
    a.save!
end

items.each do |item|
    a = Item.create(item)
    a.save!
end

item_reviews.each do |item_review|
    a = ItemReview.create(item_review)
    a.save!
end

watchlists.each do |watchlist|
    a = Watchlist.create(watchlist)
    a.save!
end

watchitems.each do |watchitem|
    a = WatchItem.create(watchitem)
    a.save!
end

orders.each do |order|
    a = Order.create(order)
    a.save!
end

requests.each do |request|
    a = Request.create(request)
    a.save!
end

