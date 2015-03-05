Focoblog
==========

This is a Rails-based blog that I am building out for my own use, but
anyone who wants to fork and do with it what they will.

Status
==========

This blog app is currently under construction. The user authentication/
authorization system is in place (see below), along with basic article 
functionality. Authorization is now more fully integrated with article 
creation, create, ane edit actions, and authos are displayed for articles
along with gravatar in an aside. The blog ower (first user) and avatar
are displayed in the article index, which displays a paginated list of
articles (will-paginate gem). Only the blog owner can current create,
edit, and delete articles and comments.

Comment functionality is added, and users must be logged in to comment.
For logged in users, a simple form appears under the post body, all 
pretty like.

Since I rely on bootstrap heavily, I threw in some coffeescript to use
a modal for delete confirmation, which looks nicer than the stock js
dialog. I am exploring using a modal for login as well.


Next Steps
==========
High Priority:
        Add ability for article author to edit/delete their own
        Add ability for comment author to edit/delete their own
        Add, but do not yet implement non login comments
          - here, the user would need to enter an email
          - these comments should be moderated by admin
        Add Tags to articles
Other things on the agenda: 
        Add "author" access level between user and admin
        Make access level editable by admins from user pages


Rails User Authentication
==========

Rails user authentication based on parts of [*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

Ruby 2.2.0
Rails 4.2.0


## Gravatars
If a user user uses gravatar with their registered email address, the 
gravatar image can be used in page views easily. For example, the following
embedded ruby will give a 50px gravatar image:

    <%= gravatar_for User.first, size: 50 %>

## Production Server Configuration
The production section of the gemfile is set for heroku deploy, but heroku
documentation should be followed to add appropriate gems and configuration
for a real production-class server and SSL support (e.g., Unicorn, Puma).

## Production Mail Deploy
If you are deploying to heroku or a similar service, in order for
account verification and password reset emails to be sent, you'll likely
need to set up an account with a transactional email service, and use your
application host's documentation for including their add-on and configuring
your app to use it. Heroku has add-on's for Sendgrid and Mandrill, both of
which have a free level of service you can start with.
