## README

This README would normally document whatever steps are necessary to get the
application up and running.


* Ruby version

- 2.0.0-p195

* Configuration

    cp config/database.yml.example config/database.yml

* Database creation

    bundle exec rake db:create

* Database initialization

    bundle exec rake db:migrate

* How to run the test suite
   
    rspec spec

* Services (job queues, cache servers, search engines, etc.)

    bundle exec rails s puma

* Deployment instructions

    mina deploy to=production
