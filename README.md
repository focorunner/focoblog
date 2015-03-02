Focorunner
==========

This is a Rails-based blog to update and reimagine my old focorunner blog.


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
