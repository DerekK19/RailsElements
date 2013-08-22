require "rvm/capistrano"
require "capistrano/ext/multistage"

set :stages, ["staging", "production"]
set :default_stage, "staging"

set :rvm_ruby_string, :local        # use the same ruby as used locally for deployment

before 'deploy', 'rvm:install_rvm'  # update RVM
before 'deploy', 'rvm:install_ruby' # install Ruby and create gemset (both if missing)

set :keep_releases, 1

set :application, "elements"
set :repository,  "git@github.com:DerekK19/RailsElements.git"

set :scm, :git

# clean up old releases on each deploy
after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end