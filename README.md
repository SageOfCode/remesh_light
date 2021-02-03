# Remesh Light

This project replicates the functionality of the Remesh software in a very minimal sense. 

### Table of Contents
  - [How to Install Application](#how-to-install-application)
  - [How to Use Application](#how-to-use-application)
  - [Testing](#testing)
  - [Licenses](#licenses)
  - [Contact](#contact)

## How to Install Application

For usage on your local machine, in your terminal navigate to a directory to store this application and run the instructions listed below:

```
git clone git@github.com:SageOfCode/remesh_light.git
cd remesh_light
bundle install
rake db:{create,migrate,seed}
rails s
Open localhost:3000 in your web browser
```

## How to Use Application

Once this application is open in your web browser, click on `View All Conversations`
You should see a section to search for conversations, you can search by full or partial title, and it is not case sensative.
Below that is a list of all conversations.

Each conversation title is a link to a page to view that conversations messages and thoughts. 
You can add a message to a conversation, and you can add a thought to respond to a message.

## Testing

* For testing I used RSpec

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code.

* In order to run the tests, run `bundle exec rspec` in the command line and you should have all passing tests.
  
## Licenses

  * Ruby 2.5.3
  * Rails 2.5.4.3

## Contact

#### Sage Freeman-Gonzales: [LinkedIn](https://www.linkedin.com/in/sagefreemangonzales/), [Email](mailto:sagegonzales15@gmail.com), [GitHub](https://github.com/SageOfCode)

<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/badge/Ruby-2.5.3-orange)
