# Fork to fix a bug

The bug was an exception due to a missing require statement.  This fork adds the missing require statement and also adds the Gem dependency for nokogiri.

# Forem + Redcarpet = :heart:

Simply specify this gem as a dependency of your application that also contains Forem:

    gem 'forem', :git => "git://github.com/radar/forem"
    gem 'forem-redcarpet', :git => "git://github.com/radar/forem-redcarpet"

The code will do the rest!

Comes with syntax highlighting provided by Redcarpet, however you'll need to generate the CSS yourself with this lovely command:

    Pygments.css

Enjoy!

