# Deployment link
---
# GitHub Repository
---
# Description
#### Problem Statement
#### Features
#### Screenshots
#### Tech Stack

---
# Design & Documentation
#### User Stories
#### Workflow
#### Wireframes
#### Database Entity Relationship Diagram

---
#Project Plan
#### Timeline
#### Trello board

---
#Short Answer Questions

1. What is the need (i.e. challenge) that you will be addressing in your project?

HOMEGROWN LOCAL promotes diversity, quality and uniqueness. Homegrown Local will reduce the time from the harvest time to the consumer plate. Our fruits will be harvested while ripe and not firm like commercial food chain because unlike fruits from commercial food distributor our fruits do not have to travel for months before reaching the consumer. 
Homegrown local will also bring the profits back to the grower by cut short the distribution chain. Homegrown Local hopes if our network being implemented widely that we might be able to add volume and variety to our urban landscape. 


2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

At the moment, our commercial food chain fruits being harvested while firm in order for them to still stay edible when reaching the consumer. The fruits and vegetable taste bland because they were not let to ripe on the tree. 
Homegrown local will also try to promote edible urban landscape. In the old days. it is common for each household to grow some of their produce in their backyard. Apart from local Sunday market, we enable network of direct fresh produce to be sold whenever they are ready without waiting for Sunday market to happen. 

The demand of organic food is increasing throughout the years. Organic food is known to be healthier because of the absence of chemicals that are normally used in the cultivation process, but because of the complication that came without using the chemicals, which means higher cultivation risk for the farmer and higher returns are expected out of organic food. On top of that, involvement of middle party between farmer and consumer increases the price of the food even further.

Most of homegrown produces are grown just with basic sunlight, rainwater, organic compost and a lot of care. Hence no industrial chemicals or pesticides are used. That will classify our produces organics.

3. Describe the project will you be conducting and how. your App will address the needs.

HomeGrownLocal is an web application that directly connects farmer with consumer. Our application also happens to be a two sided marketplace, therefore the consumer are allowed to participate as a seller if the consumer happened to have a small garden or a vacant field.

4. Describe the network infrastructure the App may be based on.

Deployment through Heroku, directly from GitHub to the internet via Heroku's deployment platfrom and network infrastructure. Heroku can be accessed either directly from GitHub and allows developers to spin up an application quickly and for free without needing to purchase their own servers or deploy their own database/network infrastucture. 

Database with Postgresql.

 APPLICATION DEVELOPMENT PHASE

Software is developed on local computer using Ruby on Rails and deployed for local testing using inbuilt Rails Server (which hosts the application at a localhost port)
We write the source code, configure dependencies, configure the database
We store the code in a GitHub repository, both as a means of Version Control, and in preparation for Deployment

APPLICATION BUILD PHASE

When our application is ready, we create a new app on Heroku and push the code in our GitHub repository directly to Heroku so that Heroku can prepare it for deployment
Heroku receives the code and initiates the build process
Heroku bundles assets necessary to run the application, like the your compiled code, and combines this them with the application to create a 'slug', which describes the bundled file that’s ready for deployment.

APPLICATION DEPLOYMENT / EXECUTION PHASE


5. Identify and describe the software to be used in your App.

Software Languages:

Front-end:
HTML: HyperText Markup Language. A language used to constract web pages. Used mostly for structure, capable of basic styling for elements.
ERB: Embedded Ruby. ERB enables ruby logic to be implemented directly in an HTML page and read by the browser as HTML. 
CSS: Cascading Style Sheets. CSS sheets are attached to an HTML page to style the web-page. Mostly styles are static elements, though can be used to create minimal animations.
Sass: Syntactically Awesome Style Sheets. Adds some additional features to CSS while also able to be written as standard CSS. Additional features include, variables, nested elements (for cleaner organisation and grouping of elements), mixins (methods)

Back-end:
Ruby: 
Ruby on Rails: Web application framework written in Ruby. Used to create full-stack web applications. MVC (Model Controller View) framework using separation of concerns. Emphasises CoC 'Convention Over Configuration', in other words is meant to be able to be used out of the box with conventions specific to RoR, and a large degree of abstraction to automate many technical or time-consuming aspects of building a web application, like spawning databases and writing database migrations, creating controllers, views, routes, and handling different types of HTTP requests.

Database Software:

PostgreSQL Database: A popular Relational Database Management System based on the SQL Database Language. Data is strutured in a way that allows for queries based on data objects and their relationships with each other, written natively or through an ORM.
ActiveRecord: An ORM 'Object Relational Mapping' tool. Abstracts SQL query language so that code can be written in another language like Ruby, and used to speak to the database and request information.
Rake: Software Task Management and Build Automation tool written in Ruby. Can be used to define various tasks used in configuring software build, file compilation, database creation and management.

Version Control:

Git and GitHub: Source Control software. Open-sourced popular software development tool that allows for either single programmerse to work on their local machine, or remote teams to work together on a project using the GitHub Web Application connected to a local CLI Command Line Interface. Most popular features are the ability to 'commit', or save a piece of software at a certain 'state', which can be returned to at a later date. Also allows asynchronous development of applications and features using 'branches' of software that are written concorrently but don't affect the core branch unless merged at a later time.

Deployment:

Heroku

<<< popular Platform as a Service (PAAS) product that allows for deployment of web applications without owning your own database or server infrastructure. Users can push code in many different languages directly from GitHub to the internet via Heroku's deployment platfrom where it handles building and deployment of the application>>.

6. Identify the database to be used in your App and provide a justification for your choice.

Heroku works smoothly with Postgresql and Ruby on Rails.

PostgreSQL is a relational database, making it easy to manipulate and access data.

Postgresql syntax is based on SQL and popular hence plenty of documentation available on the internet. 

- PostgreSQL, because we are using Heroku as our deployment option and Heroku has a dependency on PostgreSQL

7. Identify and describe the production database setup (i.e. postgres instance).

rails new -d postgresql
It will create a local instance of PostgreSQL database on rails using Ruby on Rails. 

rails db:create
It will create our database

rails g scaffold (Model) or rails g model (Model)
It will create schema for our tables

rails db migrate 
It will create relevant tables from our schema

This postgresSQL database will become our Development and Testing database 

rails db:seed
It will seed our database with fake data we put on seeds.rb file
We initially created an local instance of a PostgreSQL database using Ruby on Rails by calling the flag -d postgresql when creating the Rails app. We then call 'rails db:create' and set up our tables and columns using migrations: eg 'rails g model user' & 'rails g migration AddNameToUser'. This database then becomes our Development and testing database which we seed with fake data using the seeds.rb file.

<For Production, the Migrations and Schema of our Development Database are pushed to Heroku from the GitHub repository, then set up within Heroku. To do this we run the same commands to create the database and run migrations, only we put 'heroku run' before the command.

Because the schema and migrations are the same, the structure of our database on Heroku is exactly the same and can be seeded using the same seeds.rb file.

Therefore our production database is an instance of a postgres database, hosted on Heroku, because the schema and migrations are the sma, the structure of database on Heroku is exactly the same and can be seeded using the same seed.rb file



8. Describe the architecture of your App.



CLIENT/WEB
Displays the web page in a web browser
Handles User Interface and user interactions with the web page.
Sends and receives HTTP requests to and from the web server by interacting with the web page.

WEB SERVER
Processes HTTP requests and directs the request to the requested Route.

ROUTES
A map of pathways defined by the application that define which functions are called in the controller depending on different requests from the server

Most common HTTP requests are:
GET (request information from the database)
DELETE (delete information in the database)
POST (send new information to the database)
PATCH / UPDATE (update / change existing information in the database)

CONTROLLER
The location of the logic of the application. Contains functions that are called by requests from the web server
Functions either:
query information from the database
request files required to load a certain web page, or 'view'
call information from external APIs or other web services
parses or formats ready to be used in some following function or view
run other types of logic specific to the application
Tells the web server how to display web pages with information received from the Database or

VIEWS
The final representation of the initial request from the client.
Tells the browser what to display to the user. Can be in many different formats, including HTML & CSS, JSON, Images, Pdf etc

ORM
Parses code from the controller to native SQL language.
Allows the appliation to set and retrieve properties and relationships of database models (data)

DATABASE
PostgreSQL relational database that stores persistent information used by the application.


9. Explain the different high-level components (abstractions) in your App.

Ruby on Rails as our web application framework 
Ruby on Rails is a MVC framework.

Model (M)
Model represents shape of the data and business logic. It maintains the data of the application. Model objects retrieve and store model state in a database.

Model (M) Defines the structure of the data held in our database, including attributes of objects, logic (functions) used to manipulate that data at the database level, dependencies / validations, and the relationships between different objects. Files are located in app/models directory

View (V) Uses HTML and Embedded Ruby to describe how the pages of the application appear within a browser. Files are located in app/views, and styled with Sass CSS files located in app/assets directories.

Controller (C) Sits between the Models, Views, and any APIs and controls their function. Controller methods can be called via RESTful API routes, which are in turn triggered by HTTP requests from the Client, or in some cases can be called by changes in the state of the data in the databse. Controller files are located in app/controllers directory.

Browser sends request to the MVC application
Incoming request directed to controller
Controller processes request and forms a data model
This model is passed to the appropriate view
The views renders the output




Active Record

A layer of abstraction that sits between our application and the database. Active record abstracts SQL code so that we can talk to the database using Ruby, and allows us to tread the data in the Model as Ruby objects.

Other

Some additional abstractions provided by Rails commonly used in our application:

Active Storage: Allows us to upload images through forms, and forms a helpful layer we can use to speak to the AWS S3 API for image hosting
Form helpers: For easy forms that abstract the HTML
link_to / redirect_to: For easy access and alias calling of RESTful routes

10. Detail any third party services that your App will use.

- Stripe

- AWS S3

- Geolocator

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

GUMTREE
Users will have many items
Each user can be both seller and buyer
Items can have zero to many reviews

Ripenearme
https://www.ripenear.me/
RipeNearMe turns your trees and plants into subscribe-able resources and improves the share-ability of vegetables and fruits.
Subscription is free


12. Discuss the database relations to be implemented.

- answer

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

 City 
  belongs_to :state
  has_many :locations


 ItemCategory 
    has_many :items

 ItemReview
  belongs_to :item
  belongs_to :reviewer, :class_name => 'User'

Item
  belongs_to :item_category
  belongs_to :user
  belongs_to :measurement
  has_many :watchitems
  has_many :watchlists, :through => :watchitems
  has_many :requests
  has_many :orders, :through => :requests
  has_many :item_reviews

  has_one_attached :image

Location 
  belongs_to :city

Measurement 
    has_many :items

Order 
  belongs_to :user
  has_many :requests
  has_many :items, :through => :requests

Profile 
  has_one :user

Request 
  belongs_to :item
  belongs_to :order

Role 
  has_many :users

State 
    has_many :cities

UserRating 
  belongs_to :reviewee, :class_name => 'User'
  belongs_to :reviewer, :class_name => 'User'

User 

  belongs_to :location, optional: :true
        
  has_many :received_user_ratings, :class_name => 'UserRating', :foreign_key => 'reviewee_id'
  has_many :sent_user_ratings, :class_name => 'UserRating', :foreign_key => 'reviewer_id'

  belongs_to :profile
  has_one :watchlist
  has_many :items
  has_many :orders
  belongs_to :role

  has_many :sent_item_reviews, :class_name => 'ItemReview', :foreign_key => 'reviewer_id'

WatchItem
  belongs_to :item
  belongs_to :watchlist


Watchlist 
  belongs_to :user
  has_many :watchitems
  has_many :items, :through => :watchitems


14. Provide your database schema design.

- answer

15. Provide User stories for your App.

As a garden enthusiast, I would like to check what’s growing in my locale, so I search on my postcode and find out 

As a vegan, I love trying various plant tastes, and homegrown plants produce, especially from my locale, would love to purchase them 

As a pot plants hobbyist, I grow various herbs in my small garden patch in the balcony and I love to share my knowledge with the world 

As a mom who loves to teach my kids to grown our own food supplies, I love to share my experience with the world 

As a tomato backyard hobbyist, I ended up with 27 trees, can’t eat them all, so need to sell them, if there are surplus, which are many times in a year. 

As an organic enthusiast, I spend a fortune buying from local supermarket or other organic suppliers, love to support local community rather than big corporation  

As a café owner, love to be able to try out different various home- made sauces or oils, I will check interesting produces and ship them if necessary. 

As a cook enthusiast, I love to share experiences and findings with another similar hobbyist 

As a bored pensioner, I love to have a hobby that will make me money to supply my pension 

As a stay home made, I love to make money using resources I have 

As a regular columnist, I love to review interesting new thing, and new ideas or new business ideas worth written on 

As an administrator, I love to review how many new users signed up in a week 

As an administrator, I love to have a summary of users per post code 

As an administrator, I love to have logs to show users movement in my website 

As an administrator, I love to have logs to show conversion rate between new IPs and sign up 

As an administrator, I love to have a summary of new purchase order per day compared to number of searches in that day grouped by area and also grouped by unique users 

As an administrator, I love to summary revenue per month grouped by user ID and group by area 

As a young person, I can’t cook so I buy anything that is new trend and has been reviewed as a good stuff. 

As I have to sit in a train for two hours each day, I will read anything, my emails including, so anything happening in my locale I would read the messages or news 

As a collector, I collect new tastes and experiences, if anyone selling anything sounds original, certainly will try them 

As a restauranteur, I love to include unique pieces on my plate decoration, so an over small potatoes growing locale, or super-hot- chilies, would try them, or even ship them if grown a bit further out. 

As a backyard columnist I love to write about locale gardeners 

As a kid I love to see if anyone can grow anything in a balcony 

As a traveler, I love to be able to buy fruits that taste local 

As a foodist I love to incorporate a new homegrown food item 

As I have tasted NZ apples and Tasmania grapes, I love to be able to buy direct from growers and got them shipped! 

As a food blogger, I like to search new food items, local market normally where I shop but if I can search anything new or unique plant or food produce in my locale or as I travel within where I am staying, I would love to visit them and take pictures for my blo 

As a keen biologist, I like to see the nature of soil and discussion around certain area, so local homegrown seller would be ideal to have a chat. Various areas in Victoria have very distinct soil.  

As an overseas foreigner, as part of the day trip, I would not mind to see if I can visit locale growers within certain areas without going to mainstream wineries.  

If user buys item, messages will contain discussion about pick up time etc 

If user buys item and cash on pick up, and he fails to pick up, seller will manually have to put back the quantity reserved back to the quantity available to purchase 

As a user, to sign in, a user should be able to specify the postcode, or not to specify, the default is null. 

16. Provide Wireframes for your App.

(in folder - file Wireframe.png)

17. Describe the way tasks are allocated and tracked in your project.

- Both tasks allocation and tracking are achieved through Kanban board, there are few layers of stages in our Kanban board.
We have Trello card tabs:
Backlog
Next
In Progress
Review 
Completed

Each card is allocated as either 
V1 (version 1 - MVP see below)
V2 (future features)
V3 (future features)


MVP Features
- A list of available items as the home page
- A detailed item page
- A form to upload new items
- A form to edit items
- Buttons on the home page that delete an item
- Signup page
- Login/signout button in navbar
Future Features
- Ability to review users
- A map to see where all the items are
- Search, filter and sort functionality
- Watchlist
- Admin Dashboard (include KPI)
KPIs we are targeting
- Active users per week
- Number of sign ups per week



18. Discuss how Agile methodology is being implemented in your project.

- We conducted a daily stand-up meeting on daily basis to promote open communication between team members.

- We initially prioritize on our MVP (Minimum Viable Product) rather than having sophisticated unfinished product.

- We constantly communicate with our instructor to ensure that our product doesn't get sidetracked and properly fulfilled our requirements.

- We are using Kanban board via Trello. Tasks assignment and re-prioritization is achievable because of this tool.

19. Provide an overview and description of your Source control process.

Services:

S3 Module: Image Storage from Amazon Web Services

Stripe: Payment processing Software as a Service (SASS) from Stripe. Allows users to pay for products or services within the app using credit card.

Devise: User Authentication module used to manage user registration, sign-in, passwords, confirmation etc

Pundit: Authorizations module used to define the scope of account

AWS / Active Storage: Used to host uploaded images on Amazon Web Services

Gems we are using:

gem 'stripe'
gem 'devise'
gem 'pundit'
gem "aws-sdk-s3", require: false
ruby '2.6.3'
gem 'rails', '~> 5.2.3'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
 
  gem 'chromedriver-helper'
 gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


20. Provide an overview and description of your Testing process.

- answer

21. Discuss and analyse requirements related to information system security.

- answer

22. Discuss methods you will use to protect information and data.

- answer

23. Research what your legal obligations are in relation to handling user data.

- answer
