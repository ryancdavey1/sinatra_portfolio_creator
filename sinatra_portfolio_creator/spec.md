# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app => The app uses sinatra routes in the the web app
- [x] Use ActiveRecord for storing information in a database => The app has a `db` folder that contains ActiveRecord migrations for creating the users table, the projects table, and modifying the tables
- [x] Include more than one model class (e.g. User, Post, Category) => The app has a `models` folder that contains models for User and Project 
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) => The User model has_many Projects
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) => The Project model belongs_to the User model
- [x] Include user accounts with unique login attribute (username or email) => The user is required to enter a username and password upon logging i
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying => In the `projects_controller.rb` file, there are routes for Creating, Reading, Updating and Destroying Projects for a User
- [x] Ensure that users can't modify content created by other users => The user can't edit or delete a project that isn't theirs, otherwise they will be redirected from the project
- [x] Include user input validations => The user is required to enter a username, email, and password upon signing up, otherwise they will be redirected to the sign up page; The user is required to enter a username and password upon logging in, otherwise they will be redirected to the log in page; The user can't edit or delete a project that isn't theirs, otherwise they will be redirected from the project
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code => The README.md file contains a project description, install instructions, a contributors guid, and a link to the license for my code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message