# Ubuntu
namespace :env do
  task :daily => [:environment] do
    set :app,                 'awesome-daily'
    set :branch,              'develop'
    set :domain,              'awesome.daily'
    set :deploy_to,           '/home/ubuntu/awesome-daily'
    set :user,                'ubuntu'
    set :group,               'ubuntu'
    # set :sudoer,            'sudoer_user'
    # set :rvm_path,          '/usr/local/rvm/scripts/rvm'   # we don't use that. see below.
    set :services_path,       '/etc/init.d'                  # where your God and Unicorn service control scripts will go
    set :nginx_path,          '/etc/nginx'
    set :deploy_server,       'daily'                   # just a handy name of the server
    invoke :defaults                                         # load rest of the config
    invoke :'rbenv:load'                                     # Be sure to commit your .rbenv-version.
    # invoke :"rvm:use[#{rvm_string}]"                       # since my prod server runs 1.9 as default system ruby, there's no need to run rvm:use
  end
end
