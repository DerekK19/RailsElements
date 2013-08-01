require "rvm/capistrano"

set :rvm_ruby_string, :local        # use the same ruby as used locally for deployment

before 'deploy', 'rvm:install_rvm'  # update RVM
before 'deploy', 'rvm:install_ruby' # install Ruby and create gemset (both if missing)

set :keep_releases, 1

set :application, "elements"
set :repository,  "git@github.com:DerekK19/RailsElements.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "localhost"							# Your HTTP server, Apache/etc
role :app, "localhost"							# This may be the same as your `Web` server
#role :db,  "mysqlserver", :primary => true		# This is where Rails migrations will run
#role :db,  "mysqlserver"

set(:deploy_to) { "/Users/Shared/Sites/Rails/elements" }
set :use_sudo, false

ssh_options[:forward_agent] = true

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end