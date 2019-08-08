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

- answer

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
