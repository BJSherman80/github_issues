# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.0

* Configuration: $ bundle install

* How to run the test suite: $ rspec

* High level Implementation: I consumed an API using a Facade pattern. At first I had the GitHub API doing all of the 'work' by having it do all of the sorting but I then ran into an issue. All though the docs say you can have "a list of comma seperated values" in your params I ran into the issue of it returning odd results if any results at all (code is commented out). Since I was sticking to the 5 hour timeline and after spending some time on it I decided to make a new service that iterates and filters by labels it is a less ideal way because it is making several API calls but it got the job done. I would love to further discuss my code with whom it may concern. Also I could have just made a gem doing 'bundle gem pickle_challenge' as doing rails g new makes way to many un-wanted files. 

* ...
