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

~~~Erb
    <%= gravatar_for User.first, size: 50 %>
~~~

### Comments 
Comments are functional, and require comment to be logged in for now, so to comment they must have or create an account. 

### Tags
The ability to add custom tags to articles is now functional, including the ability to click on tag buttons under article titles to access a list of articles with the selected tag. All tags are also visible in a tag index view, in alphabetical order, but no links are yet added, because I haven't decided on the best place for them. It will likely be in an expanding list under "Articles" on the top navbar, but I am considering the footer, or may possibly simply add the top 25 tags in a cluster in the aside, with a "more" link to display the tag index.

### Views
Styling relies heavily on Bootstrap 3, with some customization, and this includes the replacement of stock javascript delete confirmation with a Bootstrap/JQuery modal with some nifty coffeescript. I added edit and show support for a 255 character bio with a character countdown handled by a little jQuery function in the assets. 

It still bothers me that there are some extra queries to the user table on article index and show pages that come from some erb in the aside. I should be able to remedy that in proper OO fashion with either a single query to retrieve a user record in the controller, so I plan to take care of that soon.

Some of the views may have some repetitive code still, and as I find them while doing other work I will be moving that shared html/erb into partials (DRY principle). There is also some logic in the views, some of which should be moved to models with updated calls through the controller, and some of which should be in view helpers. I'll also be refactoring those when I notice them.

Markdown saved in articles and comments is now converted to HTML by the Kramdown plugin when rendering article show views, so articles can be styled nicely using valid Markdown. I added, then removed some javascript that inserted a different types of markdown into textareas (markdown-toolbar gem). I like the look and insert capability, and extensibility, but this gen was coded to update the value of the textarea directly, not using browser actions, so there was no simple way to undo the insert. I'll revisit when I either write my own solution or find another compact library with undo/redo functionality.

The addition of my custom markdown toolbar is complete.
![toolbar](https://dl.dropboxusercontent.com/u/774079/github-toolbar.png)

That brings with it the ability to show images inline in articles, as long as
they are hosted online. I see no need yet to implement a
media library in the app at this time, but cloudify is an option integrated
third-party hosting, and I can explore that later.

I added Ajax preview button and a preview controller with an action to load a
preview of markdown while authoring articles without the need to save and edit
repeatedly. Here's a picture of that as well:
![preview](https://dl.dropboxusercontent.com/u/774079/github-markdown-preview.png)

Of course, at this time, all of the editing and preview capabilities are 
allowed only for the admin level users. I still need to add an "author" access 
levellevel

### Static Pages
I added some text to the base About and Help pages. On the About page the text refers to the point of developing the blog and some of my influences. The Help page now offers some links to markdown resources useful for styling posts and comments. 

### Controllers
The more completely integration Authorization/Authentication, some conditionals need to be added to controllers to ensure that actions can't be exploited via HTTP request - for increased security. The conditionals are easy to write, but that work should be test driven, so I haven't put a timeline on it yet.

I added some conditional checks for logged in users and admin for vulnerable 
controller actions on articles and comments.

### Models
Some of the model relationships need a little work, and that should facilitate some simpler coding in the controllers and views, and also add some dependencies of articles and comments on existence of the users that created them (dependent delete). I added a bio field to the User model. 

### Heroku
The blog is now set up and deployed on heroku, piggybacking on heroku's ssl.

## Next Priorities
**Higher Priority**

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
I have added the Puma gem, and coniguration file, and in the production environment configuration file, I've also turned on SSL. If you deploy to Heroku, this allows immediate testing over SSL.

## Production Mail Deploy
The blog is currently configured to use Mandrill for mail in production. To complete setup, you'll need to follow the steps indicated in Heroku's Mandrill documentation to install the plugin for the app on their service. The process for setting up for Sendgrid is similar, and Heroku has instructions for that up as well. For that, you'll need to edit some of the files I currently have set up for Mandrill.
