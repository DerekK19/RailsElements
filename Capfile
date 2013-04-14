load 'deploy'
# Uncomment if you are using Rails' asset pipeline
    # load 'deploy/assets'
load 'config/deploy' # remove this line to skip loading any of the default tasks

set :user, "capistrano"
 
ssh_options[:paranoid] = false
private_key="#{ENV["USERPROFILE"]}/.ssh/id_rsa"
if File.exists?(private_key)
  ssh_options[:keys] = private_key
else
  puts "Private key: " + private_key + " doesn't exist"
end
ssh_options[:forward_agent] = true
