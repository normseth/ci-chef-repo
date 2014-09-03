current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "normseth"
client_key               "#{current_dir}/dummy.pem"
validation_client_name   "dummy-validator"
validation_key           "#{current_dir}/dummy-validator.pem"
chef_server_url          ENV['CHEF_SERVER_URL'} || "http://192.168.43.1:8889"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

