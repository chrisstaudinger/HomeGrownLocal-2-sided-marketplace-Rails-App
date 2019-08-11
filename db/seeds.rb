# states = [
#     {
#         state: "Victoria"
#     },
#     {
#         state: "Queensland"
#     },
#     {
#         state: "New South Wales"
#     },
#     {
#         state: "Western Australia"
#     },
#     {
#         state: "South Australia"
#     },
#     {
#         state: "Northern Territory"
#     },
#     {
#         state: "Tasmania"
#     },
#     {
#         state: "Australain Capital Territory"
#     }
# ]
# cities = [
#     {
#         city: "Melbourne",
#         state_id: 1
#     },
#     {
#         city: "Brisbane",
#         state_id: 2
#     },
#     {
#         city: "Sydney",
#         state_id: 3
#     },
#     {
#         city: "Perth",
#         state_id: 4
#     },
#     {
#         city: "Adelaide",
#         state_id: 5
#     },
#     {
#         city: "Darwin",
#         state_id: 6
#     },
#     {
#         city: "Hobart",
#         state_id: 7
#     },
#     {
#         city: "Canberra",
#         state_id: 8
#     }
# ]
# locations = [
#     {
#         postcode: "3141",
#         suburb: "South Yarra",
#         state: "Victoria"
#     },
#     {
#         postcode: "4169",
#         suburb: "Kangaroo Point",
#         state: "Queensland"
#     },
#     {
#         postcode: "2026",
#         suburb: "Bondi",
#         state: "New South Wales"
#     },
#     {
#         postcode: "6153",
#         suburb: "Applecross",
#         state: "Western Australia"
#     },
#     {
#         postcode: "5015",
#         suburb: "Port Adelaide",
#         state: "South Australia"
#     },
#     {
#         postcode: "0810",
#         suburb: "Coconut Grove",
#         state: "Northern Territory"
#     },
#     {
#         postcode: "7005",
#         suburb: "Sandy Bay",
#         state: "Tasmania"
#     },
#     {
#         postcode: "2601",
#         suburb: "Acton",
#         state: "Australain Capital Territory"
#     }
# ]
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
profiles = [
    {
        name: "Adam Ascot"
    },
    {
        name: "Belinda Bisk"
    },
    {
        name: "Charlie Camp"
    },
    {
        name: "Dylan Delta"
    },
    {
        name: "Elise Etto"
    },
    {
        name: "Frank Fuller"
    },
    {
        name: "Geoff Goon"
    },
    {
        name: "Harmony Hattich"
    }
]
users = [
    {
        name: "adam",
        role_id: 1,
        email: "adam@gmail.com",
        password: "123456",
        profile_id: 1,
        user_location: "Melbourne VIC, Australia"
    },
    {
        name: "belinda",
        role_id: 1,
        email: "belinda@gmail.com",
        password: "123456",
        profile_id: 2,
        user_location: "Brisbane QLD, Australia"
    },
    {
        name: "charlie",
        role_id: 1,
        email: "charlie@gmail.com",
        password: "123456",
        profile_id: 3,
        user_location: "Sydney NSW, Australia"
    },
    {
        name: "dylan",
        role_id: 1,
        email: "dylan@gmail.com",
        password: "123456",
        profile_id: 4,
        user_location: "Perth WA, Australia"
    },
    {
        name: "elise",
        role_id: 1,
        email: "elise@gmail.com",
        password: "123456",
        profile_id: 5,
        user_location: "Adelaide SA, Australia"
    },
    {
        name: "frank",
        role_id: 1,
        email: "frank@gmail.com",
        password: "123456",
        profile_id: 6,
        user_location: "Darwin NT, Australia"
    },
    {
        name: "geoff",
        role_id: 1,
        email: "geoff@gmail.com",
        password: "123456",
        profile_id: 7,
        user_location: "Canberra ACT, Australia"
    },
    {
        name: "harmony",
        role_id: 1,
        email: "harmony@gmail.com",
        password: "123456",
        profile_id: 8,
        user_location: "Melbourne VIC, Australia"
    }
]
# user_ratings = [
#     {
#         reviewee_id: 1,
#         reviewer_id: 2,
#         rating: 5.0
#     },
#     {
#         reviewee_id: 1,
#         reviewer_id: 3,
#         rating: 3.0
#     },
#     {
#         reviewee_id: 2,
#         reviewer_id: 1,
#         rating: 4.0
#     },
#     {
#         reviewee_id: 3,
#         reviewer_id: 8,
#         rating: 5.0
#     }
# ]
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
        unit: "Kg"
    },
    {
        unit: "g"
    },
    {
        unit: "pcs"
    },
    {
        unit: "Lt"
    },
    {
        unit: "mL"
    }
]
items = [
    {
        item_category_id: 1,
        user_id: 1,
        name: "Fuji Apples",
        description: "Organic apples from my garden. No pesticides",
        price: 1.0,
        measurement_id: 3,
        quantity: 5.0,
        image_name: "apples-1.jpg"
    },
    {
        item_category_id: 2,
        user_id: 2,
        name: "Beetroot",
        description: "Organic fresh beetroot. No pesticides or sprays.",
        price: 8.5,
        measurement_id: 1,
        quantity: 3.0,
        image_name: "beetroot-1.jpg"
    },
    {
        item_category_id: 3,
        user_id: 3,
        name: "Chilli Jam 100g Jars",
        description: "Try my famous Chilli Jam. The family recipe has been passed down three generations. 100mg jars.",
        price: 7.99,
        measurement_id: 3,
        quantity: 15.0,
        image_name: "chilli-jam-1.jpg"
    },
    {
        item_category_id: 4,
        user_id: 4,
        name: "Almond Milk",
        description: "Made from organic almonds. No perservatives added. 1L bottles.",
        price: 4.99,
        measurement_id: 4,
        quantity: 5.0,
        image_name: "almond-milk-1.jpg"
    },
    {
        item_category_id: 5,
        user_id: 5,
        name: "Coriander Bunches",
        description: "Grown in my veggie patch.",
        price: 3.99,
        measurement_id: 3,
        quantity: 5.0,
        image_name: "coriander-1.jpg"
    },
    {
        item_category_id: 6,
        user_id: 6,
        name: "Free Range Eggs",
        description: "The eggs our hens lay usually weigh in at around 700g per dozen. They roam free range in our backyard. They are food scraps and grain.",
        price: 0.5,
        measurement_id: 3,
        quantity: 60.0,
        image_name: "chickens-backyard-1.jpg"
    },
    {
        item_category_id: 6,
        user_id: 1,
        name: "Free Range Duck Eggs",
        description: "Our ducks roam free in our backyard. They are fed food scraps and grain. Usually a dozen eggs weighs around 350g.",
        price: 0.5,
        measurement_id: 3,
        quantity: 30.0,
        image_name: "ducks-backyard-1.jpg"
    },
    {
        item_category_id: 1,
        user_id: 2,
        name: "Bowen Mangos",
        description: "Ripe from our trees. We have too many. We pick them when they are ripe (not just let them fall on the ground). $1.50 each.",
        price: 1.5,
        measurement_id: 3,
        quantity: 24.0,
        image_name: "bowen-mango-1.jpg"
    },
    {
        item_category_id: 2,
        user_id: 3,
        name: "Birdseye Chilli",
        description: "Organic birdseye chilli. We don't use any sprays or pesticides. I sell them in 100g bags for $3.00ea.",
        price: 30.0,
        measurement_id: 1,
        quantity: 0.5,
        image_name: "chilli-birdseye-1.png"
    },
    {
        item_category_id: 3,
        user_id: 4,
        name: "Strawberry Jam",
        description: "We have a small strawberry farm up towards Yanchep. I get the strawberries from there and use them to whip up the old family recipe! $12.00 per jar (300g)",
        price: 10.0,
        measurement_id: 3,
        quantity: 40,
        image_name: "home-made-strawberry-jam-1.jpg"
    },
    {
        item_category_id: 4,
        user_id: 5,
        name: "Delicious Fruit Icy Poles!",
        description: "These icy poles are made from 100% fruit. I make them out of fruit smoothies I blend.",
        price: 2.5,
        measurement_id: 3,
        quantity: 20,
        image_name: "fruit-icy-pole-1.jpg"
    },
    {
        item_category_id: 5,
        user_id: 1,
        name: "Fresh Basil",
        description: "We have some herbs that we grow on our veranda. More basil than we need. $4.00 per bunch.",
        price: 4.0,
        measurement_id: 3,
        quantity: 4,
        image_name: "basil-1.jpg"
    }
]

# item_reviews = [
#     {
#         item_id: 1,
#         reviewer_id: 2,
#         message: "Deliciously sweet and crunchy. Will definitely be buying again!",
#         rating: 5.0
#     },
#     {
#         item_id: 2,
#         reviewer_id: 3,
#         message: "Nice to get that are organic without having to pay a small fortune. I Recommend this product and seller.",
#         rating: 4.0
#     },
#     {
#         item_id: 3,
#         reviewer_id: 4,
#         message: "Charlie's Chilli Jam is amazing!! It's explosive with tones of sweetness and spice.",
#         rating: 5.0
#     },
#     {
#         item_id: 4,
#         reviewer_id: 5,
#         message: "Will be buying again. The strength is so much more than Woolworths and Coles. Once you trying home made almond milk you really see the differnce.",
#         rating: 5.0
#     },
#     {
#         item_id: 1,
#         reviewer_id: 6,
#         message: "Decent apples. Crunchy and sweet",
#         rating: 4.0
#     }
# ]
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
# orders = [
#     {
#         user_id: 1
#     },
#     {
#         user_id: 2
#     },
#     {
#         user_id: 3
#     },
#     {
#         user_id: 4
#     },
#     {
#         user_id: 5
#     },
#     {
#         user_id: 6
#     }
# ]
# requests = [
# {
#     item_id: 1,
#     order_id: 2,
#     quantity: 10.0
# },
# {
#     item_id: 2,
#     order_id: 3,
#     quantity: 0.5
# },
# {
#     item_id: 3,
#     order_id: 4,
#     quantity: 1.0
# },
# {
#     item_id: 4,
#     order_id: 5,
#     quantity: 0.5
# },
# {
#     item_id: 4,
#     order_id: 6,
#     quantity: 2.0
# },
# {
#     item_id: 5,
#     order_id: 6,
#     quantity: 1.0
# }
# ]
# states.each do |state|
#     a = State.create(state)
#     a.save!
# end
# cities.each do |city|
#     a = City.create(city)
#     a.save!
# end
# locations.each do |location|
#     a = Location.create(location)
#     a.save!
# end
roles.each do |role|
    a = Role.create(role)
    a.save!
end
profiles.each do |profile|
    a = Profile.create(profile)
    a.save!
end
users.each do |user|
    a = User.create(user)
    a.save!
end
# user_ratings.each do |user_rating|
#     a = UserRating.create(user_rating)
#     a.save!
# end
item_categories.each do |item_category|
    a = ItemCategory.create(item_category)
    a.save!
end
measurements.each do |measurement|
    a = Measurement.create(measurement)
    a.save!
end

items.each do |item|
    new_item = Item.new
    new_item.item_category_id = item[:item_category_id]
    new_item.user_id = item[:user_id]
    new_item.name = item[:name]
    new_item.description = item[:description]
    new_item.price = item[:price]
    new_item.measurement_id = item[:measurement_id]
    new_item.quantity = item[:quantity]
    new_item.save!
    path = Rails.root.join("app", "assets", "images", "item_images", item[:image_name])
    Item.last.image.attach(io: File.open(path), filename: item[:image_name])
    Item.last.save!
end

# items.each do |item|
#     a = Item.create(item)
#     a.save!
# end
# item_reviews.each do |item_review|
#     a = ItemReview.create(item_review)
#     a.save!
# end
# watchlists.each do |watchlist|
#     a = Watchlist.create(watchlist)
#     a.save!
# end
watchitems.each do |watchitem|
    a = WatchItem.create(watchitem)
    a.save!
end
# orders.each do |order|
#     a = Order.create(order)
#     a.save!
# end
# requests.each do |request|
#     a = Request.create(request)
#     a.save!
# end
