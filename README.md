# Engineblock

Engineblock is a template for creating engines in rails 3.0.xx.
In more current versions of rails this process has been made much easier, but
we don't always have the opportunity to use the latest and greatest.

If you need to create an engine for an older rails app then you can use this
to get you started.

Engineblock is configured with a built in test app, and set to use rspec so you can
develop your engine without including it into your parent app if you want.

# Installation

To install just clone this repo on your machine.

To use this template in your parent app in development add this to your Gemfile:

    $ gem 'engineblock', :git => "git://github.com/jacklin10/engineblock.git

or

You might want to clone thie engineblock repo and point your host project directly at the source

    $ gem 'engineblock', :path=>'/Users/<your_name_here>/<your_code_location/engineblock'

Run the engineblock generator:

    $ rails g engineblock:install

This will add migrations, initializers, etc to the parent app.

There are some basic instructions on how to get started on the wiki
https://github.com/jacklin10/engineblock/wiki

# License
This project rocks and uses MIT-LICENSE.
