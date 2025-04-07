
server 'lovportal.lirmm.fr', roles: %w{app db}


BRANCH = ENV.include?('BRANCH') ? ENV['BRANCH'] : 'master'
set :branch, "#{BRANCH}"

set :deploy_to, "/srv/ontoportal/#{fetch(:application)}"
# install gems into a common direcotry shared across ui, api and ncbo_cron to reduce disk usage
set :bundle_path, '/srv/ontoportal/.bundle'

#location of configuration files
LOCAL_CONFIG_PATH = ENV.include?('LOCAL_CONFIG_PATH') ? ENV['LOCAL_CONFIG_PATH'] : '/srv/ontoportal/virtual_appliance/appliance_config'
