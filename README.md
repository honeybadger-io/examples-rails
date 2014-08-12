# Honeybadger Test Rails App

Welcome to a simple Rails application that allows you to test the
[Honeybadger](https://www.honeybadger.io) exception and application
monitoring platform for Rails apps.

## Quick Start

The easiest way to get started with this application is to deploy it to
Heroku with the Heroku Button:

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Using that button will spin up a Heroku app for you with the Honeybadger
add-on already added to the app.

## Slightly Less Quick Start

If you'd like to do it the old fashioned way, follow these steps:

1. Sign up or sign in at [Honeybadger.io](https://www.honeybadger.io)
2. Create a new project and make a note of the api key on the settings
   page
3. Clone or download this app
4. Run `bundle` to get the necessary gems installed
5. Run the app in production (errors in development aren't reported by
   default):
`SECRET_KEY_BASE=foo RAILS_ENV=production
HONEYBADGER_API_KEY=your_api_key_here rails s`

## Trying It Out

Once you have the app running, either on Heroku or on your local
machine, browse to the running Rails app.  When you click on the first
link, an error will be triggered and reported to Honeybadger.  Check
your email for a message from Honeybadger with a link to the error you
just recorded. 

## Error Context

If you take a peek at `app/controllers/application_controller.rb` you'll
see our context feature in action.  Setting the context allows you to
pass relevant information about the request that generated the error to
Honeybadger.  You can put anything you like in the context hash, but
most often this hash is used to send information about the user that
encountered the error to Honeybadger to assist in contacting users that
experienced a problem on your site.

## Enjoy!

We hope this sample app gives you an easy way to see just how awesome
Honeybadger is. :)  If you have any questions about this app or the
Honeybadger monitoring service, please feel free to drop us a line at
support@honeybadger.io.
