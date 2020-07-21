## Group Hours
This is a Solo project where a user should be able to create Group-hours(a combination of Groups where users belong and hours they spend doing different things in their lives) page which allows users to create accounts, groups, hours, along with session creation and destruction. At the end of the project, the user should view all groups, hours by groups and hours by user, all in All these activities start on the index page.

### Requirements
Download the application and ensure that you have Ruby installed.
Install rails 5.2.3 if you haven't yet done it.
To Intsall rails add the gem install rails -v '5.2.3' command.

### Features
Some of the features of this project include but not limited to:
  - User Signup. 
  - User Login.
  - List of Groups.
  - List Users.

### User authentication and Authorisation using session id
  - Users are created using the signup feature.
  - They get to signin.
  - Every action is dependent on a logged user apart from the index page.
  
 ### Installing.
 - The installation is just you having the requirements listed and a browser
 - Then put the url in the url bar
 - That will be it

### Using the System

#### On your local Machine
##### Setting you local machine up
  - Install ruby using:
    - $ brew install ruby {For a Mac users}
    - $ sudo apt-get install ruby-full {Linux user}
    - Follow this [link](https://www.ruby-lang.org/en/documentation/installation/) for more help
  - Install Rails using the following commands.
    - gem install rails
    - rails -v {to Check the version of rails}
    - sudo yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel 
    - libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl    sqlite-devel  { Install Prerequisite Dependencies }
    - sudo yum install postgresql-server postgresql-contrib {Install the data base}
  - Switch to the Postgres terminal and setup your database. Follow the link below
    - [Link](https://www.guru99.com/postgresql-create-database.html)
    - The link will enable you create a user name and password for your database
    - Create the database 
    - run a rake:dbmigrate
    - Your project will be fully setup
##### Running the application locally
  - Run rails s to start the server.
  - Type localhost:3000 in the URL.
  - Create an account and signin with that account.
  - The rest, follow the UI for what you want to do.
  
 #### Remote
 - The product is deployed on heroku so it use it follow the link below
 
  
## TESTING
  - Tests have been written for: 
      - Groups.
      - Hours.
      - Users.
      
  - Running the Tests:
  The tests are written using Rspec and because of that:
    - The tests can be run using the rspec command.
    
  ### [Live Demo](https://cryptic-journey-83932.herokuapp.com/sessions/new)

### Technologies Used
- Ruby
- Ruby on rails

### Contributors
Jude Kajura

GitHub: @kbjude
