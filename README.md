Focoblog
==========

This is a Rails-based blog that I am building out for my own use, but
anyone who wants to fork and do with it what they will.

Status
==========

This blog app is currently under construction. The user authentication/
authorization system is in place (see below), along with basic article 
functionality. I'm in the process of integrating the authorization more 
fully into article creation and view flows, so the blog owner/author only 
can edit/delete articles.

Next Steps
==========
High Priority: 
        Comments
        Tags
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
