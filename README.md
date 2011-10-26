Randomizer
==========

https://github.com/bluerail/randomizer

By Rene van Lieshout <rene@bluerail.nl>

Description
-----------

Randomizer is a gem that provides a diversity of random values, such as names and e-mail addresses. It might provide you with initial data for developing an application and require some feel of how it would look like when used.

Please not that random does not equal unique!

Installation
------------

    gem install factory-randomizer

Usage
-----

Any of the available creators can be accessed using Randomizer:

#### Names
* Randomizer.first_name => "Darnell"
* Randomizer.surname => "Stanley"
* Randomizer.full_name => "Alexa Hickman"

#### E-mail addresses
* Randomizer.email => "leanna_dean@example.com"
* Randomizer.email\_with\_name => "Wyatt Obrien <wyatt_obrien@example.com>"

#### Numbers
* Randomizer.number => 281845123
* Randomizer.number(:min => 10, :max => 100) => 29

#### Password
* Randomizer.password => "2cafe8"
* Randomizer.password(:length => 10) => "9480b52bf1"

Or, to create 100 random Users:

    100.times{ User.create(:name => Randomizer.full_name) }

When a validate\_uniqueness\_of :name is set, this might create less then 100 users and could fail if .create! is used.

Planned features
----------------

* Generation of addresses
* Generation of phone numbers
* Knowledge of country specific address / phone number format
* Generation of company names
* Generation of ...

Contributions are welcome! Feel free to fork and send a pull request through Github.
