$:.unshift './lib'

require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rbenv'

require 'mina/defaults'
require 'mina/extras'
require 'mina/unicorn'         
require 'mina/nginx'
require 'mina/god'

Dir['lib/mina/servers/*.rb'].each { |f| load f }

set :repository,         'git@github.com:marshluca/awesome'
set :default_server,     'production'  # or 'vagrant'
set :keep_releases,      100

set :server, ENV['to'] || default_server
invoke :"env:#{server}"

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile'

    to :launch do
      invoke :'unicorn:restart'
    end
  end
end
