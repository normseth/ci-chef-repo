current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "normseth"
client_key               "#{current_dir}/dummy.pem"
validation_client_name   "dummy-validator"
validation_key           "#{current_dir}/dummy-validator.pem"
chef_server_url          "http://#{ENV['CHEF_SERVER_IP']}:8889"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
#cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_path            ["#{current_dir}/../cookbooks" , "#{current_dir}/../berks-cookbooks" ]

