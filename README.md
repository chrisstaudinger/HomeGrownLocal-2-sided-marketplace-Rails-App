# Deployment link
---
# GitHub Repository
---
# Description
#### Problem Statement
#### Features
#### Screenshots

#### Tech Stack

Contents
=> Section 1: Description

Tech Stack
Front-end: HTML, ERB, CSS, Sass
Back-end: Ruby, Ruby on Rails
Database: PostgreSQL Database
Deployment: Heroku

Configuration / Installation Instructions

In your local directory run 'https://github.com/chrisstaudinger/home-grown-local'

Open the directory you clone the repositories to, 

We are using Visual Code, so make sure you open the directory where the files been unzipped to:

code/run - 'bundle install' to install the dependencies

code/run 'rails db:reset' to reset the database (db:reset will drop the database, seed data)

code/run rails s to run the server in development mode

In your browser, navigate to 'http://localhost:3000/' to view the website

You can browse without login or create new account. Only if you want to 'Post and Item' or 'Buy Item' that you need to login/create account. We provide link to login (if you have already created account) or to create account (if you have not had an account)

Sitemap

Features

Screenshots

Our Inspiration & The Idea

=> Section 2: Planning

Project Plan
Wireframes


ERD
User Journey Diagram


Team Communication
Task Management
Version / Source-Control

=> Section 3: Short Answer Questions

=> Section 4: Reflection

Challenges
Take-Aways
Extending-Coding-Tutor

=> Section 4: Section 5: Appendix Single Page Scrolling
Search & Filtering
# Design & Documentation
#### User Stories

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

#### User Flow
As a GUEST(standard user - a user who is not signed in), I should be able to:
-View the homepage, browse through the list of organic produce within my area
- Navigate through the front page to find out price and quantity of the produce on the list
- Navigate through the front page to find search of a particular item
- Click on a particular listing to view further about the produce 
(description, and exact address)
- View the lister and make contact (email, direct message, or phone number)
- Navigate on the detail product page to go back to homepage
- Search other areas or other produce within further reach geographical areas
- Create a new account easily if I want to list my garden produce or to purchase
- Able to add a produce into my basket
- Able to change the quantity of the produce ordered in my basket
 
As a signed in user, I should be able to:

 
guest (unsigned user) wants to be able to:
1. navigate through the website to search produce within his area
2. navigate through the website to find out how much charges to list produce
3. navigate through the website to find out whether produce can be delivered
4. find out payment methods
5. read blogs or comments from other users on a produce
 
user alias seller wants to be able to:
1. create a new account
2. login and create new garden/listing
3. login and update listing (quantity or price)
4. login and check and reply to messages
5. login and check total orders to date 
6. login and search particular order (to get detail of purchaser, quantity, or address of buyer in case drop off order)
7. login and search related produce within the area
8. check payment history
9. view ratings or reviews
 
user alias buyer wants to be able to:
1. create a new account
2. login and create purchase order (basket)
3. login and review basket (update quantity or delete) or review detail of items on the order
4. login and pay purchase order
5. login and check payment history
6. login and communicate with seller
7. login and communicate with administrator (queries or complaints)
8. create reviews
 
administrator wants to be able to:
1. view all users profiles and orders
2. view complaints or messages
3. build KPIs - total order by number per week, total order by quantity per week, or per month, total new users per month
4. moderate content (reviews/profiles)
a. flag users/content>notify admin
b. softban (1 day)
5. edit/delete content, including orders and listings
6. view financial data
 
UI Flow
1 — “typically used for one of two purposes. First, they are used to model the interactions that users have with your software, as defined in a single use case. [. . .] Second, [. . .] they enable you to gain a high-level overview of the user interface for your application.”
2 — “show graphically how a user will navigate a solution’s user interface”
 
high fidelity User Interface Flow - 
single task flows Task Flows

 
not signed in users
User goal (goal/story level)
1. navigate through the website to browse items within geographical area
2. search based on postcode
3. drill down to description of the produce (show page)
4. click on purchase button on the show page
5. view basket (and delete or update quantity)
 
Task flow - action level
1. user need to go to home page
2. popup message to ask user to put their postcode 
3. index page will display all produce within that postcode
4. if user click on a particular item, show page to detail that produce will appear
5. user may click on purchase button, if purchase button click, pop up message to show the basket with that produce item and user need to put quantity, the basket sub total will be recalculated each time user change the quantity in the basket
6. before the basket appear, another pop up message will appear to prompt user to create account, 
7. once account detail entered, user automatically log in and basket appear with that item on it and prompt user to put quantity
8. user may want to go back and forth between index and show pages via navigation bar
9. user will want to review basket and check out
10. if user check out, payment system page will appear, upon successful payment, detail of the seller address and phone number will be emailed to the buyer
 
Wire flow - component level
1. home page
2. index
3. show page
4. account set up page
5. index page
6.  show page
7. basket
8. payment system 
9. basket 
10. index page
 
User flow - interaction level




 
 
#### Workflow
Figma, mockflow, lucychart
#### Wireframes

#### Database Entity Relationship Diagram

---
#Project Plan
#### Timeline
#### Trello board



---
#Short Answer Questions

1. What is the need (i.e. challenge) that you will be addressing in your project?

@HOMEGROWN-LOCAL promotes diversity, quality and uniqueness. We are giving consumer ability to choose to have their fruits and vegetable demand being met by their local growers. The supply hopefully will bring back the quality of our fruits and vegetable supplies because products are being harvested while ripe and time travel to consumer plate is reduced being local. Unlike fruits from a commercial food distributor, our fruits and vegetable will focus on quality not looks, apples might not look perfect but they taste good and super fresh. @HOMEGROWN-LOCAL will also be bringing the profits back to the grower by cut short the distribution chain. 


2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

At the moment, our commercial food chain fruits being harvested while firm in order for them to still stay edible when reaching the consumer. The fruits and vegetable taste bland because they were not let to ripe on the tree. 
Homegrown local will also try to promote edible urban landscape. In the old days. it is common for each household to grow some of their produce in their backyard. Apart from local Sunday market, we enable network of direct fresh produce to be sold whenever they are ready without waiting for Sunday market to happen. 

The demand of organic food is increasing throughout the years. Organic food is known to be healthier because of the absence of chemicals that are normally used in the cultivation process, but because of the complication that came without using the chemicals, which means higher cultivation risk for the farmer and higher returns are expected out of organic food. On top of that, involvement of middle party between farmer and consumer increases the price of the food even further.

3. Describe the project will you be conducting and how. your App will address the needs.

HomeGrownLocal is an web application that directly connects farmer with consumer. Our application also happens to be a two sided marketplace, therefore the consumer are allowed to participate as a seller if the consumer happened to have a small garden or a vacant field.

4. Describe the network infrastructure the App may be based on.


>>>>>>>>>>>>>>>>>>>>>
Our application is deployed through the Platform as a Service (PAAS) Heroku, a popular software product that allows developers to push code directly from GitHub to the internet via Heroku's deployment platfrom and network infrastructure.

Heroku can be accessed either directly from GitHub or through the Heroku Command Line Interface (CLI), and allows developers to spin up an application quickly and for free without needing to purchase their own servers or deploy their own database / network infrastructure.

Our app is deployed through the following process:

DEVELOPMENT PHASE
Ruby on Rails is a popular web framework written in Ruby.
Codes are written using Ruby on Rails application and deployment for local testing enabled using with inbuilt Rails Server hosting it at a localhost port). For Version Control we manage our source code using Github repositories. Each programmer needs to download a version from origin each time before starting daily coding. Pull request generated and merge with a local master. 
Our database is using PostgreSQL.


DEPLOYMENT / EXECUTION PHASE

Heroku integrates with GitHub to make it easy to deploy code living on GitHub to apps running on Heroku. When GitHub integration is configured for a Heroku app, Heroku can automatically build and release (if the build is successful) pushes to the specified GitHub repo.

We integrate our Github repositories with Heroku application deployment (To configure GitHub integration, you have to authenticate with GitHub. You only have to do this once per Heroku account). We use the Heroku dashboard to configure Github integration.

Heroku is is a free Cloud-based platform to build and deploy internet application. 
Deployment is performed directly from GitHub via Heroku's deployment platform. Heroku can be accessed either directly from GitHub or through the Heroku Command Line Interface (CLI). 

The Heroku Command Line Interface (CLI) makes it easy to create and manage your Heroku apps directly from the terminal

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

####### Chris - can you comment on these answers as I did not actually do this part ######
<We initially created an local instance of a PostgreSQL database using Ruby on Rails by calling the flag -d postgresql when creating the Rails app. We then call 'rails db:create' and set up our tables and columns using migrations: eg 'rails g model user' & 'rails g migration AddNameToUser'. This database then becomes our Development and testing database which we seed with fake data using the seeds.rb file.>

<For Production, the Migrations and Schema of our Development Database are pushed to Heroku from the GitHub repository, then set up within Heroku. To do this we run the same commands to create the database and run migrations, only we put 'heroku run' before the command.

Because the schema and migrations are the same, the structure of our database on Heroku is exactly the same and can be seeded using the same seeds.rb file.

Therefore our production database is an instance of a postgres database, hosted on Heroku, because the schema and migrations are the same, the structure of database on Heroku is exactly the same and can be seeded using the same seed.rb file
#######################


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

HOMEGROWN MARKET PLACE 


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

https://trello.com/c/ohZYZYz9/25-user-stories

16. Provide Wireframes for your App.

!(C:\Users\a\OneDrive\coderacademy\RailsProject\New folder)

17. Describe the way tasks are allocated and tracked in your project.

- Both tasks allocation and tracking are achieved through Kanban board, there are few layers of stages in our Kanban board.

18. Discuss how Agile methodology is being implemented in your project.

- We conducted a daily stand-up meeting on daily basis to promote open communication between team members.

- We initially prioritize on our MVP (Minimum Viable Product) rather than having sophisticated unfinished product.

- We constantly communicate with our instructor to ensure that our product doesn't get sidetracked and properly fulfilled our requirements.

- We are using Kanban board via Trello. Tasks assignment and re-prioritization is achievable because of this tool.

19. Provide an overview and description of your Source control process.

- answer

20. Provide an overview and description of your Testing process.

- answer

21. Discuss and analyse requirements related to information system security.

- answer

22. Discuss methods you will use to protect information and data.

- answer

23. Research what your legal obligations are in relation to handling user data.

- answer
