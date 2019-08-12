![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/images/logo2v2.png?raw=true "Home Grown Local Logo")

# Home Grown Local

### [View Live application](https://homegrownlocal.herokuapp.com/)

#### Contributers

##### Chris
<img src="https://avatars1.githubusercontent.com/u/16986875?s=460&v=4" alt="drawing" width="150"/>

##### Suki
<img src="https://avatars1.githubusercontent.com/u/42060507?s=400&v=4" alt="drawing" width="150"/>

##### Selly
<img src="https://avatars2.githubusercontent.com/u/49693577?s=400&v=4" alt="drawing" width="150"/>


## Contents
<!-- links  -->
**[Section 1: Description](#Section-1:-Description)**

**[About](#About-Home-Grown-Local)**\
**[Tech Stack](#Tech-Stack)**\
**[Configuration](#Configuration-/-Installation-Instructions)**\
**[Screenshots](#Screenshots)**\
**[Version Note](#Version-Note)**



**[Section 2: Planning](#Section-2:-Planning)**

**[Idea Conception](#Idea-Conception)**\
**[Project Management And Agile Development](#Project-Management-And-Agile-Development)**\
**[Version / Source-Control](#Version-/-Source-Control)**\
**[Team Communication](#Team-Communication)**


**[Section 3: Short Answer Questions](#Section-3:-Short-Answer-Questions)**

**[Section 4: Reflection](#Section-4:-Reflection)**
**[Challenges](#Challenges)**\
**[Take Aways](#Take-Aways)**\
**[Future Enhancements](#Future-Enhancements)**



# Section 1: Description

## __About Home Grown Local__
 Home Grown Local is an open source two-sided marketplace helping to put money back into the pockets of everyday Australians rather than corporate conglomerates. The goal of the application is to bring Australian communities greater ability to buy fresh, local and organic produce, bringing people towards a healthy lifestyle. 

## Tech Stack

* Front-end: HTML, ERB, CSS, Sass, Javascript
* Back-end: Ruby, Ruby on Rails
* Database: PostgreSQL Database with ActiveRecord
* Deployment: Heroku

## Configuration / Installation Instructions

This application is running:
* Ruby v2.6.3
* Rails v5.2.3
* PSQL v11.4
* Java v12.0.1

Within your computer terminal, navigate to the directory where you want to install the application files, and run the following commands:
1. Run git clone to install the application files
``` ruby
git clone git@github.com:chrisstaudinger/home-grown-local.git
```

2. (If you haven't got homebrew installed, run the command below, otherwise skip this step and go to step 3.)
``` ruby
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
3. Install & Run Elasticsearch
```ruby
brew update
```
```ruby
install elasticsearch
```
```ruby
elasticsearch
```

3. (If you haven't got bundler installed, run the command below, otherwise skip this step and go to step 4.)

``` ruby
gem install bundler
```

4. Run 'bundle install' to install the dependencies

``` ruby
bundle install
```

5. Run rails s to run the server in development mode
``` ruby
rails s
```

6. Run 'rails db:reset' to reset the database
``` ruby
rails db:reset
```

7. In your browser, navigate to 'http://localhost:3000/' to view the website

## Screenshots

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/site-screenshot/root-screenshots/whole-site-screenshot.png?raw=true "Home Grown Local Home Page")

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/site-screenshot/item-showpage-screenshot/item-show-complete-screenshot.png?raw=true "Item Page")

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/stripe-1.png?raw=true "Stripe Integration Image")

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/watchlist-1.png?raw=true "User Watchlist Image")


![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/login-1.png?raw=true "Login Image")


![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/new-item-1.png?raw=true "Post An Ad Image")

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/site-screenshot/about-us-screenshots/about-us-complete-screenshot.png?raw=true "About Us Image")

### Version Note
Currently the version of this application is version 1.0. This application was built in the space of 3 weeks and some of the content such as the sitemap and userflow were built having future versions in mind. Therefore, some aspects of version 1.0 may differ from the resources listed in the this document.


# Section 2: Planning

## Idea Conception

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/idea-brainstorming.jpg?raw=true "Brainstorming Idea Image")

Coming up with the idea was a very collaborative process. We all brainstormed ideas on individually for a set period of time and listed them all together. From here we individually analysed the ideas, shared our evaluations, shortlisted the best ones, re-evaluated them and reached consensus on the idea.

A lot of our initial inspiration was drawn from Airbnb and Uber; their ability to create an product/service from utilising dormant resources. Once we settled on Home Grown Local, a lot of inspiration was drawn from Gumtree.

## Project Management And Agile Development

### Project Spec Sheet
![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/project-spec-sheet.png?raw=true "Project Spec Sheet")

Afrer we settled on our application idea, we created a project spec sheet. The project spec sheet was the overview compass of our application.

### Kanban Board
![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/kanban-board-1.png?raw=true "Kanban Board")

From the outset we utilised a kanban board through Trello. Tasks were throughly broken down, planned out and labelled to acheive our MVP, then future versions. Tasks were assigned to an individual team member to take responsibility for getting the tasks completed. Moreover, comments were used on the cards for progress or blocker updates. Cards were assigned due dates.

### Sprint Meetings & Stand Ups

With a project timeline of 3 weeks we conducted sprint meetings at the start of each week. The sprint meetings were used as a tool to ensure team members were all on the same page, and from an overview perspective we were heading in the right direction and on track. The following is what was covered in the sprint meetings:

* Evaluation of what needs to be done
* Evaluation of how we are going
* Discuss any pivoting that needs to be done or any blocker we had or may come up in the following week

Stand ups were done a on a daily basis first thing in the morning as a tool for communication between the team. The below is what was covered in the stand ups:

* Rating ourselves from 0-5 of how we are tracking for the task we set ourselves in the sprint meeting
* Stating what we acheived in the last 24 hours
* Discussing any blockers we had
* Stating what we plan to acheive in the next 24 hours


## Application Achitechture And Design

Most of the first week of the project was spent on designing the achitecture of our application.

* Database Design (ERD)
* Sitemap
* Userflow (User-journey)
* User Stories


### Database Design (ERD)

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/HomeGrownLocal-erd.png?raw=true "Database Design ERD")

### Sitemap

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/Home%20Grown%20Local%20Site%20Map%20(2).png?raw=true "Sitemap")

### Userflow (User-journey)

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/Userflow_diagram.png?raw=true "Userflow")

### Wireframes

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/Wireframe.png?raw=true "Wireframes")

### Logo Design, Colour Palette Testing & Design Inspiration

![](https://github.com/chrisstaudinger/home-grown-local/blob/master/app/assets/resources/readme%20screenshot%20attachments/moodboard-color-palette-font-1.png?raw=true  "Logo Design, Colour Palette Testing & Design Inspiration")

![](https://github.com/chrisstaudinger/home-grown-local/blob/master/app/assets/resources/readme%20screenshot%20attachments/figma-1.png?raw=true  "Logo Design, Colour Palette Testing & Design Inspiration")

### Mockup

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/mockup-1.png?raw=true  "Mockup")

### User Stories

* As a user, I want to be able to search a product by the name, so that I can find what I need/want
* As a user, I want to be able to search a product by the location, so that I can find what is available in my area
* As a user, I want to be able to search a product by the category of the product, so I can narrow down the type of produce I am looking for
* As a user, I want to be able to post ads for my own items, so that I can sell my own produce
* As a user, I want to be able to login, so that I have an account storing what I do on the site
* As a user, I want to be able to watch items, so that I can come back to it later
* As a user, I want to be able to message a seller, so that I can organise buying the item from them
* As a user, I want to be able to see all my messages, so that I know if someone has messaged me
* As a user, I want to be able to delete my ad, so that I remove it when required
* As a user, I want to be able to edit my ad, so that I can update it when required


## Version / Source-Control

We used Git CLI, Git GUI's, GitHub and Heroku CLI for source control / version control. Each new feature was a new branch. Once the feature was completed and tested locally, the branch was pushed to github and a pull request was submitted for another team member to review. Once the code review was completed, if it was approved, the team member would pull origin master to the local version of that 'feature' branch and test it locally (this was done to ensure if there were any bugs or merge conflicts from other commits to master, they would show locally and testing could be done locally rather than on production). If testing worked properly, the team member would merge that local feature branch to their local master and push their master branch to origin master.

Origin master was pulled at least once daily (usually several times) by team members to ensure build ups of merge conflicts did not occur.

Every day we would push the origin repository to a Heroku repository created on only one computer to confirm our build.

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/github-3.png?raw=true "Version Control Image")
![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/github-2.png?raw=true "Version Control Image")


## Team Communication

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/team_slack.png?raw=true  "Slack Communication")

As mentioned in **[Project Management](#Project-Management-And-Agile-Development)** section, a lot of project management communication was conducted in sprint meetings and stand ups. For most other communication, slack was used. 


# Section 3: Short Answer Questions


**1. What is the need (i.e. challenge) that you will be addressing in your project?**

The need of this project that is being addressed is the challenge of reducing the amount of power and/or the monopoly corporate conglomorates have over Australia. Moreover, the challenge of increasing society's health and/or reducing disease in Australia's population.

**2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**

The justification for a service that allows communities to buy fresh, local produce is well established. The problem for Australian communities is a lack of options that are utilising the expansive reach of current day technology. We know this because:

a) We asked around - through networking and speaking to our peers, we found that the great majory of people are unaware of major service that provides an 'online farmers market'.

b) Everyone knows what a farmers market is, everyone has been to a farmers market, and significant minority go to farmers markets regularly. However, this industry does not have a massive online prescence as of yet. It's reach and accessibility is no where near its potential, therefore, Australians are relying on corporate conglomerates and sub-optimal produce more than they otherwise would. 

c) It is common knowledge of the health problems in Australian society. Enough said...


**3. Describe the project will you be conducting and how. your App will address the needs.**

Home Grown Local is an localised online farmers market. The application is for the Australian societ. Anyone that owns/rents a
dwelling that they can grow fresh produce, and has access to the internet can use the service. 

Home Grown Local increases access to fresh local produce. By doing so, society will inevitably consume more vegatables, fruits and other micro-nutrient dense food, therefore, reducing the amount of processed, GMO, and micro-nutrient poor food that assist in the production of disease and illness.  

**4. Describe the network infrastructure the App may be based on.**

Home Grown Local is deployed through the PAAS Heroku, a popular software product that allows developers to push code directly from GitHub to the internet via Heroku's deployment platfrom and network infrastructure.

Heroku can be accessed either directly from GitHub or through the Heroku Command Line Interface (CLI), and allows developers to spin up an application quickly and for free without needing to purchase their own servers or deploy their own database / network infrastructure.

Our app is deployed through the following process:

APPLICATION DEVELOPMENT PHASE

Software is developed on our local computers and deployed for local testing by using our local machine as a server via a rails  server, which hosts the application on a localhost port (3000 by default). We write the source code, configure dependencies, configure the database and store the code in local git repositories.

APPLICATION BUILD PHASE

Once there was enough software that is was worth testing in production we created a new app on Heroku and pushed the code in our GitHub repository directly to Heroku so that Heroku could prepare it for deployment.
Heroku receives the code and initiates the build process.
Heroku runs through a number of processes to create a slug, which describes the compressed bundled file that's optimised for the dyno manager to run.

APPLICATION DEPLOYMENT / EXECUTION PHASE

Heroku executes the slug using a mini-operating system called a Dyno, an isolated Unix container that provides an environment for the app to run in. Dynos are the resources that are needed to run and manage apps when they are deployed on Heroku. If our app were to scale in the future we would need to add more Dynos, and this is all executed in the background.
Heroku then applies to the slug environment variables from our config vars file that describe things like user credentials or other environment specifications, and finally any add-ons or third party services that extend the functionality of the application. Heroku delivers the final product containing the slug, config, and any add-ons, as a 'version' of your code. Any new release will be considered a new version of the application, and saved by Heroku.

**5. Identify and describe the software to be used in your App.**

Software Languages:

Front-end:
* HTML: HyperText Markup Language. A language used to construct web pages. Used mostly for structure and text rendering, capable of basic styling for elements.
* ERB: Embedded Ruby. Used to display ruby in a HTML page that compiles and is read by the browser as HTML.
* CSS: Cascading Style Sheets. Language used to 'style' a web-page. Mostly styles static elements, however, it can be used to create minimal animations.
* Sass: Syntactically Awesome Style Sheets. Adds some additional features to CSS while also able to be written as standard CSS. Additional features include, variables, nested elements (for cleaner organisation and grouping of elements), mixins (methods for css).
* JavaScript: A flexible Object-Oriented-Language. The most popular language for writing front-end code in web development. Most advantageous use-case is for manipulating elements upon some event or paramete such as; responding to an onClick, and dynamically transforming the data on a web-page without querying the database.

Back-end:
* Ruby: Another flexible Object-Oriented-Language. Cannot be used to write front-end code without requiring a compiler, but is very commonly used to write other back-end logic in web applications.
* Java: A high level, object-oriented, platform independent language. Function programming language used predominantely for back-end development.

Software Frameworks:
* Ruby on Rails: Web application framework written in Ruby. Used to create full-stack web applications. MVC - Model Controller View framework using separation of concerns. Emphasises CoC 'Convention Over Configuration', in other words, it is meant to be able to be used out of the box with conventions specific to RoR, and a large degree of abstraction to automate many technical or time-consuming aspects of building a web application, like spawning databases and writing database migrations, creating controllers, views, routes, and handling different types of HTTP requests.

Database Software:
* PostgreSQL Database: A popular Relational Database Management System based on the SQL Database Language. Data is strutured in a way that allows for queries based on data objects and their relationships with each other, written natively or through an ORM.
* ActiveRecord: An ORM 'Object Relational Mapping' tool. Abstracts SQL query language so that code can be written in another language like Ruby, and used to speak to the database and request information.
* Rake: Software Task Management and Build Automation tool written in Ruby. Can be used to define various tasks used in configuring software build, file compilation, database creation and management.

Version Control:
* Git and GitHub: Version Control Management System/Software. An open-sourced popular software development tool that allows developers to work on their local machines, and work together on a project using the GitHub Web Application connected to a local CLI Command Line Interface (or git gui). The foundational feature of git is the ability to control versions locally and remote. It  allows asynchronous development of applications and features using 'branches' of software that are written concurrently but don't affect the core branch unless merged at a later time.

Deployment:
* Heroku: A popular Platform as a Service (PAAS) product that allows for deployment of web applications without owning your own database or server infrastructure. Users can push code in many different languages directly from GitHub to the internet via Heroku's deployment platfrom where it handles building and deployment of the application.

Elasticsearch:
For other third party software, please see Third Party Services.



**6. Identify the database to be used in your App and provide a justification for your choice.**

We used PostgreSQL for our application, for a few different reasons:

* The cirriculum of the project stated to use a relational database. 
* We knew that we would be deploying to Heroku and PostgreSQL is the recommended database for Heroku with Rails.
* SQL databases are the most popular form of database which means they have significant documentation available for troubleshooting and PostgreSQL is among the most popular of relational databases.


**7. Identify and describe the production database setup (i.e. postgres instance).**

* We initially created a local instance of a PostgreSQL database by specifying it as an optional argument when creating a new rails application. Rails then generated our application with the configuration settings of postgreSQL as our database as opposed to the default SQLite3. We then created the database followed generating our tables. This database then was our development and testing database which we seed with dummy data using the seeds.rb file.

* For Production, the Migrations and Schema of our Development Database are pushed to Heroku from the GitHub repository. We set up the database in Heroku by running the same commands to create the database and run migrations, only we put 'heroku run' before the command. Because the schema and migrations are the same, the structure of our database on Heroku is exactly the same and can be seeded using the same seeds.rb file. Therefore our production database is an instance of a postgres database, hosted on Heroku.


**8. Describe the architecture of your App.**

#### The client
* Displays the web page in a web browser
* Handles User Interface and user interactions with the web page.
* Sends and receives HTTP requests to and from the web server by interacting with the web page.

#### Web Server

* Processes HTTP requests and directs the request to the requested Route.

#### Routes

* A map of paths defined by our application that define which actions are called in our controllers depending on different HTTP requests from the server.
* Most common HTTP requests are:
    * GET (request information from the database)
    * DELETE (delete information in the database)
    * POST (send new information to the database)
    * PATCH / UPDATE (update existing information in the database)

#### Controller

* The location of the logic of the application. Contains functions/actions that are called by requests from the web server

* Functions/Actions either:
    * Query information from the database
request files required to load a certain web page, or 'view'
    * Call information from external APIs or other web services
    * parses or formats data, ready to be used in some following function or view
    * run other types of logic specific to the application
    * Tells the web server how to display web pages with information received from the Database or

#### Views

* The final representation of the initial request from the client.
* Tells the browser what to display to the user. Can be in many different formats, including HTML & CSS, JSON, Images, Pdf etc

#### Model (ActiveRecord)

* Parses code from the controller to native SQL language.
* Allows the application to set and retrieve properties and relationships of database data

#### Database

* PostgreSQL relational database that stores persistent information used by the application

**9. Explain the different high-level components (abstractions) in your App**.

The components of our application adopted the Rails conventions of an MVC model

* Model (M) Defines the structure of the data held in our database, including attributes of objects, logic (functions - via active record) used to manipulate that data at the database level, dependencies / validations, and the relationships between different objects. Files are located in app/models directory

* View (V) Uses HTML and Embedded Ruby to describe how the pages of the application appear within a browser. Files are located in app/views. Views are styled by SASS files found in the assets/stylesheets directory. Views are the are the recipent of the data from the database through logic from the controller.

* Controller (C) Sits between the Models, Views, and any APIs and controls their function. Controller methods can be called via RESTful API routes, which are in turn triggered by HTTP requests from the Client, or in some cases can be called by changes in the state of the data in the databse. Controller files are located in app/controllers directory.

* Active Record: a layer of abstraction that sits between our application and the database. Active record abstracts SQL code so that we can talk to the database using Ruby, and allows us to treat the data in the Model as Ruby objects.

Some additional abstractions provided by Rails commonly used in our application:

* Active Storage: Allows us to upload images through forms, and forms a helpful layer we can use to speak to the AWS 
* Form helpers: For easy forms that abstract the HTML
* link_to / redirect_to: For easy access and alias calling of routes

Other Abstractions: 

* S3 API: image hosting
* Stripe API: facilitating payment processing
* Elasticsearch: search engine
* Google Places Auto Complete: Autocompletion of locations 


**10. Detail any third party services that your App will use.**

#### Services

* S3 Module: Image Storage from Amazon Web Services
* Stripe: Payment processing Software as a Service (SASS) from Stripe. Allows users to pay for products or services within the app using credit card.
* Mailgun: Creates and sends email from a specified account to registered users, triggered by certain actions defined within the application. (Not yet completed implementing, will be implemented for future versions)
* Google Places Auto Complete: Autocompletion of locations

* Key Gems / Modules:

Google Fonts: Font Library
Simple Icons: Icon Library
Devise: User Authentication module used to manage user registration, sign-in, passwords, confirmation etc
Pundit: User Authorisation module used to manage which paths a user can go to
Elasticsearch: Search Engine
Searchkick: Intellignet searching utilising Elasticsearch

#### Full List Of Dependencies

* gem 'stripe'
* gem 'devise'
* gem 'pundit'
* gem "aws-sdk-s3", require: false
* gem 'searchkick'
* gem 'rails', '~> 5.2.3'
* gem 'pg'
* gem 'puma', '~> 3.11'
* gem 'sass-rails', '~> 5.0'
* gem 'uglifier', '>= 1.3.0'
* gem 'coffee-rails', '~> 4.2'
* gem 'turbolinks', '~> 5'
* gem 'jbuilder', '~> 2.5'
* gem 'bootsnap', '>= 1.1.0', require: false
* group :development, :test do
  ~~# Call 'byebug' anywhere in the code to stop execution and get a debugger console~~
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
<br> end
* group :development do
  ~~# Access an interactive console on exception pages or by calling 'console' anywhere in the code.~~
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  ~~# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring~~
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
<br> end
* group :test do
  ~~# Adds support for Capybara system testing and selenium driver~~
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  ~~# Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'~~
<br>end
* gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]



**11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**

Gumtree: This platform is not a compettitor, but is similar in concept of the application architecture. For this application it is reasonable to expect their general data structure consists something along the lines of a user, admin, item, profile, message, watchlist, view and an order model.


**12. Discuss the database relations to be implemented.**

We used a range of database relations. Users have a single profile, have a single role, has a single watchlist and many watch_items through watchlist. Moreover, users have many items, many messages and many conversations. Additionally, Items have a single item_category, items have a user, items have a measurement, items have many watchlist through watch_items.



**13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.**


#### User
* belongs_to :profile
* has_one :watchlist
* has_many :items
* belongs_to :role
* has_many :watch_items, through: :watchlist
* has_many :messages
* has_many :conversations_as_buyer, :class_name => 'Conversation', :foreign_key => 'buyer_id'
* has_many :conversations_as_seller, :class_name => 'Conversation', :foreign_key => 'seller_id'

#### Conversation
* belongs_to :buyer, :class_name => 'User'
* belongs_to :seller, :class_name => 'User'
* has_many :messages

#### Message
* belongs_to :coversation
* belongs_to :user

#### Item

* belongs_to :item_category
* belongs_to :user
* belongs_to :measurement
* has_many :watchitems
* has_many :watchlists, :through => :watchitems

#### ItemCategory
* has_many :items

#### Measurement
* has_many :items

#### Profile
* has_one :user

#### Role
* has_many :users

#### WatchItem
* belongs_to :item
* belongs_to :watchlist

#### Watchlist
* belongs_to :user
* has_many :watchitems
* has_many :items, :through => :watchitems



**14. Provide your database schema design.**

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/HomeGrownLocal-erd.png?raw=true "Database Design ERD")

This ERD was of our initial design. We have pivoted a couple of times whilst building out the current version of the application. A new ERD will be coming soon.

**15. Provide User stories for your App.**

* As a user, I want to be able to search a product by the name, so that I can find what I need/want
* As a user, I want to be able to search a product by the location, so that I can find what is available in my area
* As a user, I want to be able to search a product by the category of the product, so I can narrow down the type of produce I am looking for
* As a user, I want to be able to post ads for my own items, so that I can sell my own produce
* As a user, I want to be able to login, so that I have an account storing what I do on the site
* As a user, I want to be able to watch items, so that I can come back to it later
* As a user, I want to be able to message a seller, so that I can organise buying the item from them
* As a user, I want to be able to see all my messages, so that I know if someone has messaged me
* As a user, I want to be able to delete my ad, so that I remove it when required
* As a user, I want to be able to edit my ad, so that I can update it when required


**16. Provide Wireframes for your App.**

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/Wireframe.png?raw=true "Wireframes")

**17. Describe the way tasks are allocated and tracked in 
your project.**

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/kanban-board-1.png?raw=true "Kanban Board")

Please refer to the **[Project Management](#Project-Management-And-Agile-Development)** section for details

**18. Discuss how Agile methodology is being implemented in your project.**

Please refer to the **[Project Management](#Project-Management-And-Agile-Development)** section for details

**19. Provide an overview and description of your Source control process.**

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/github-3.png?raw=true "Version Control Image")
![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/github-2.png?raw=true "Version Control Image")

Please refer to the **[Version / Source-Control](#Version-/-Source-Control)** section for details

**20. Provide an overview and description of your Testing process.**

Manual testing was apparent throughout the entire application build. Please refer to the **[Version / Source-Control](#Version-/-Source-Control)** section, as it explains how some of the testing process and how abundant testing was in building this application.

Furthermore, the features we pushed, whether it be a CRUD feature or a custom feature, we tested it locally, tested it again on deployment and tested it again on production. All models, controllers, api integrations, views were tested as they were built. Everything was consistently tested. 

Lastly, we tested our application on multiple browsers (Chrome, Safari and Firefox), and on mobile, viewing the Heroku site directly through a phone web browser.


**21. Discuss and analyse requirements related to information system security.**

The three main requirements related to information systems security are confidentially, integrity, and availability (CIA). The basis of an organization's security depends on a properly developed, well designed and well implementation of information systems' security policy in order to balance security goals with the needs of an organization.

Confidentially is the main goal of information system security. It refers to preventing confidential information from falling into the hands of unintended and unauthorized users. There are a lot of different types of threats that might directly, or indirectly affect the users such as theft of intellectual property, identity theft, theft of equipment or information, sabotage etc.

Next is Integrity. It refers to preventing unauthorized alteration and modification of data and programs that were made either by unintended users such as hackers, or by authorized users making unauthorized, illegal modifications.

Lastly is Availability. It refers to the preservation of data and resources available for authorized use, especially during emergencies, disasters or equipment failures.

**22. Discuss methods you will use to protect information and data.**

In order to prevent the exploitation of confidential information from users, the best way to do this is to implement encryption processes for passwords, as well as develop access controls such as antivirus software, firewall and so on.

We have implemented encryptions for passwords, api keys. Moreover, we have implemented authentication and authorisation modules (Devise & Pundit) alongside ruby and active record logic to prevent unintended information from falling into the hands of unauthorized or unintended users.


**23. Research what your legal obligations are in relation to handling user data.**

The Privacy Act 1988 dictates the legal obligations that regulates the collection, storing, provisioning of access and the management of personal information of all individuals. In regards to our handling of user data we have to consider the safety of personal information about our users from threats such as hackers, cyber thefts and so on. Transparency is key with regards to user data and privacy. One of the things that should be implemented from an early stage if our app was to expand is to provide an in-app disclosure of the data collection and privacy agreement. This agreement would outline how their data will be used. Moreover, further encryption, authentication, authorisation and firewalls should be implemented as the application grows. Lastly, backing up user data is highly advisable to avoid negligence in case of a disaster/attack.


# Section 4: Reflection

## Challenges
TBD... Coming Soon...

## Take Aways
TBD... Coming Soon...

## Future Enhancements

![](https://github.com/chrisstaudinger/home-grown-local/blob/readme/app/assets/resources/readme%20screenshot%20attachments/future-enhancements-1.png?raw=true "Future Enhancements Tasks Image")

