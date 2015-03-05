# Focoblog

This is a Rails-based blog that I am building out for my own use, but anyone who wants to fork and do with it what they will.

Using: **Ruby 2.2.0**, **Rails 4.2.0**

## Status and Plans

This blog app is currently under construction, but most key features are functional and tests are passing (more tests are needed for article and tag functionality, and related views, however).

### User Authentication
(see more about basis for the Authentication system below)
User Authentication is in place, with 2-level authorization (user/admin). Authorization is now more fully integrated with article create and edit actions.

### Gravatars (User, Article & Comment Authors)
If a user user uses gravatar with their registered email address, the gravatar image can be used in page views easily. For example, the following embedded ruby will give a 50px gravatar image:

    <%= gravatar_for User.first, size: 50 %>

### Comments 
Comments are functional, and require comment to be logged in for now, so to comment they must have or create an account. This is the pretty secure. In the future I plan to open this up somewhat, and offer non-users to comment with "valid" email address and captcha. These comments will not be displayed until approved by an admin user.

### Tags
The ability to add custom tags to articles is now functional, including the ability to click on tag buttons under article titles to access a list of articles with the selected tag. All tags are also visible in a tag index view, in alphabetical order, but no links are yet added, because I haven't decided on the best place for them. It will likely be in an expanding list under "Articles" on the top navbar, but I am considering the footer, or may possibly simply add the top 25 tags in a cluster in the aside, with a "more" link to display the tag index.

### Views
Styling relies heavily on Bootstrap 3, with some customization, and this includes the replacement of stock javascript delete confirmation with a Bootstrap/JQuery modal with some nifty coffeescript. Some of the views may have some repetitive code still, and as I find them while doing other work I will be moving that shared html/erb into partials (DRY principle). There is also some logic in the views, some of which should be moved to models with updated calls through the controller, and some of which should be in view helpers.  I'll also be refactoring those when I notice them.

### Controllers
The more completely integration Authorization/Authentication, some conditionals need to be added to controllers to ensure that actions can't be exploited via HTTP request - for increased security. The conditionals are easy to write, but that work should be test driven, so I haven't put a timeline on it yet.

### Models
Some of the model relationships need a little work, and that should facilitate some simpler coding in the controllers and views, and also add some dependencies of articles and comments on existence of the users that created them (dependent delete).  


## Next Priorities
**Higher Priority**

* Images!
* Add "Author" access level
* Add ability for article author to edit/delete their own
* Add ability for comment author to edit/delete their own
* Add, but do not yet implement non login comments
  * The user would need to enter an email
  * These comments should be moderated by admin

**Other**

* Make access level editable by admins from user pages
* Installation instructions
* Production deploy instructions, using
  * Puma server
  * PostgreSQL
  * Mandrill (for verification and password reset emails)

## Rails User Authentication

Rails user authentication based on parts of [*Ruby on Rails Tutorial: Learn Web Development with Rails* (http://www.railstutorial.org/) by [Michael Hartl](http://www.michaelhartl.com/).

## Production Server Configuration
The production section of the gemfile is set for heroku deploy, but heroku documentation should be followed to add appropriate gems and configuration for a real production-class server and SSL support (e.g., Unicorn, Puma).

## Production Mail Deploy
If you are deploying to heroku or a similar service, in order for account verification and password reset emails to be sent, you'll likely need to set up an account with a transactional email service, and use your application host's documentation for including their add-on and configuring your app to use it. Heroku has add-on's for Sendgrid and Mandrill, both of which have a free level of service you can start with.
