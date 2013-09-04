## Installation


#### Configuration

     cp config/database.yml.example config/database.yml

#### Database creation

     bundle exec rake db:create

#### Database initialization

     bundle exec rake db:migrate

#### How to run the test suite
   
     rspec spec

#### Services

     bundle exec rails s puma

#### Deployment instructions

     mina deploy
