# Sinatra Portfolio Creator

Sinatra Portoflio Creator is a web app that allows users to create project descriptions for their technical work in a portfolio. Users can create a profile by signing up, and then logging in, and have the option to log out. Users can create their own project or view projects created in the web app. When creating a new project, a title, description, start/end date, and programming languages used can be added. The programmming languages are not exhaustive, but more can be added upon request. Users can view the details of any project once logged in, but can only edit and delete projects created under their profile. 

## Installation

Use the following command to install the web app:
```bash
git clone git@github.com:ryancdavey1/sinatra_portfolio_creator.git
```
Once inside the project directory, run the command:

 $ cd sinatra_portfolio_creator

And then execute:

    $ bundle install

## Usage

Run `shotgun` to initiate the portfolio creator web app.

Navigate to `http://localhost:9393/` in your browser to load the Welcome page

On the Welcome page:
- Select `Signup` to create an account.
  - Enter a username, email, and password.
- Select `Login` to sign in with your username and password.

Once logged in:
- Select `Create a project` to enter new project details
  - Enter project details and then click to submit to return to the list of projects
- Select a project title in the list to view project details
  - Select Edit to modify the project details
  - Select Delete to remove the project from database and the list of projects 
- Select `Logout` to sigout in with your username and password.


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
CSS for the web app is sourced from `https://simplegrid.io/`.
Please make sure to update tests as appropriate.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).